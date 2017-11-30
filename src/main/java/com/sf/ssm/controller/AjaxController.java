package com.sf.ssm.controller;

import com.alibaba.fastjson.JSON;
import com.sf.ssm.entity.GoodDetails;
import com.sf.ssm.entity.User;
import com.sf.ssm.service.GoodService;
import com.sf.ssm.service.ParseExcel;
import com.sf.ssm.service.UserService;
import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 * Created by Qi on 2017/5/25.
 */

@Controller
@RequestMapping("/ajax")
public class AjaxController {

    private static  final Logger LOGGER = LoggerFactory.getLogger(AjaxController.class);

    @Autowired
    private GoodService goodService;
    @Autowired
    private UserService userService;
    @Autowired
    private ParseExcel parseExcel;

    // 上传文件存储目录
    private static final String UPLOAD_DIRECTORY = "upload";

    // 上传配置
    private static final int OK = HttpServletResponse.SC_OK;
    private static final int BAD = HttpServletResponse.SC_INTERNAL_SERVER_ERROR;
    private static final String KEY_FILE = "file";
    private static final String KEY_FILE_NAME = "fileName";
    private static final String PART_COUNT = "partCount";
    private static final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE      = 1024 * 1024 * 2048; // 2048MB
    private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; // 50MB


    @RequestMapping(value = "/findGoods",produces="text/html;charset=UTF-8", method = {RequestMethod.GET,RequestMethod.POST})
    public String findGoodInfo(HttpServletRequest request,String location){
        List<GoodDetails>  goodlist =  goodService.getGoodList(location);
        request.setAttribute("goodslist",goodlist);
        LOGGER.info("good list = {}", goodlist);
        return "testajax";
    }

    @ResponseBody
    @RequestMapping(value = "/findUserByProvince",produces="text/html;charset=UTF-8", method = {RequestMethod.GET,RequestMethod.POST})
    public String findUserByProvince(String location){
        List<User> userList = userService.findUserByProvince(location);
        System.out.println(JSON.toJSONString(userList));
        return JSON.toJSONString(userList);
    }

    @RequestMapping(value = "/getExcel",produces="text/html;charset=UTF-8", method = {RequestMethod.GET,RequestMethod.POST})
    public String getExcel(HttpServletRequest request){
        String location ="";
        List<GoodDetails>  goodlist =  goodService.getGoodList(location);
        request.setAttribute("resultList",goodlist);
        List<String> headList = new ArrayList<>();
        headList.add("商品名");
        headList.add("商品类型");
        headList.add("商品地址");
        headList.add("商品星级");
        headList.add("商品价格");
        request.setAttribute("headList",headList);
        return "doExcel";
    }

    @RequestMapping(value = "/uploadExcel",produces="text/html;charset=UTF-8", method = {RequestMethod.GET,RequestMethod.POST})
    public String uploadExcel(HttpServletRequest request ,@RequestParam(value = "filename", required = false) MultipartFile file){
        String path = request.getSession().getServletContext().getRealPath("uploadExcel");
        String fileName = file.getOriginalFilename();
        System.out.println(path);
        File targetFile = new File(path, fileName);
        System.out.println(targetFile);
        System.out.println(targetFile.toString());
        if(!targetFile.exists()){
            targetFile.mkdirs();
        }
        //保存
        try {
            file.transferTo(targetFile);
        } catch (Exception e) {
            e.printStackTrace();
        }
        List<GoodDetails> list = null;//拿到我们导入的list后就是往数据库批量插入了，这个就太简单了，我就不写了。
        if(fileName.endsWith(".xls")||fileName.endsWith(".xlsx")) {
            list = parseExcel.parseExcel((File) targetFile, targetFile.toString());
            for (int i = 0 ; i < list.size(); i ++) {
                GoodDetails goodDetails = list.get(i);
                if (goodDetails == null) {
                    continue;
                }

                LOGGER.info("good detail's name = {}", goodDetails.getGoodName());
                goodDetails.setGoodId(UUID.randomUUID().toString());
                LOGGER.info("good detail's id = {}", goodDetails.getGoodId());
                goodService.saveGood(goodDetails);
            }
        }
        return "success";
    }

    //不暴露HttpServletResponse这样的j2ee接口
    @RequestMapping(value = "/downloadPoiExecl",produces="text/html;charset=UTF-8", method = {RequestMethod.GET,RequestMethod.POST})
    public ResponseEntity<byte[]> download() throws IOException {
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
        headers.setContentDispositionFormData("attachment", "common.xls");
        //我们需要拿到准确的文件路径，一般是罗列给前端进行选择，选择好后就去文件服务器拿嘛
        File file = new File("E://工单信息表.xls");
        return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),
                headers, HttpStatus.CREATED);
    }

    @RequestMapping(value = "/upload",produces="text/html;charset=UTF-8", method = {RequestMethod.GET,RequestMethod.POST})
    public String upload(HttpServletRequest request/*, @RequestParam(value = "filename", required = false) MultipartFile file*/) {
        LOGGER.debug("upload file action = {}", request.getParameter(KEY_FILE_NAME));
        int statusCode = OK;
        String fileName = request.getParameter(KEY_FILE_NAME);
        if (StringUtils.isEmpty(fileName)) {
            statusCode = save(request);
        } else {
            statusCode = combine(fileName, request);
        }

         return "success";
    }

    private int combine(String fileName, HttpServletRequest request) {

        Long count = Long.parseLong(request.getParameter(PART_COUNT));
        String destFileName = getPath(request) + File.separator + fileName;
        File destFile = new File(destFileName);

        int statusCode = BAD;// Pessimism
        try (FileOutputStream dest = new FileOutputStream(destFile, true)) {

            FileChannel dc = dest.getChannel();// the final big file.
            for (long i = 0; i < count; i++) {
                File partFile = new File(destFileName + "." + i);// every small parts.
                if (!partFile.exists()) {
                    break;
                }
                try (FileInputStream part = new FileInputStream(partFile)) {
                    FileChannel pc = part.getChannel();
                    pc.transferTo(0, pc.size(), dc);// combine.
                }
                partFile.delete();
            }
            statusCode = OK;// set ok at last.
        } catch (Exception e) {
            LOGGER.error("combine failed.", e);
        }

        if (destFile.length() == 0) {
            destFile.delete();
        }

        return statusCode;
    }

    private int save(HttpServletRequest request) {

        if (!(request instanceof MultipartHttpServletRequest)) {
            return BAD;
        }

        int statusCode = OK;

        MultipartFile file = ((MultipartHttpServletRequest) request).getFile(KEY_FILE);
        String dest = getPath(request) + file.getOriginalFilename();
        LOGGER.debug(dest + " -- " + file.getSize() / 1000 + "K.");
        try {
            file.transferTo(new File(dest));
        } catch (Exception e) {
            LOGGER.error("save failed.", e);
            statusCode = BAD;
        }

        return statusCode;
    }

    private String getPath(HttpServletRequest request) {
        String path = request.getServletContext().getRealPath("/") + File.separatorChar + "uploadExcel" + File.separatorChar;
        //String path = request.getServletPath() + File.separatorChar + "uploadExcel" + File.separatorChar;
        LOGGER.info("file path ={}", path);
        return path;
//		return request.getServletContext().getRealPath("WEB-INF")
//				+ File.separatorChar + "work" + File.separatorChar;
    }
}
