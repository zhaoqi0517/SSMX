package com.sf.ssm.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.sf.ssm.entity.Gag;
import com.sf.ssm.entity.Score;
import com.sf.ssm.redis.RedisTemplate;
import com.sf.ssm.service.GagService;
import com.sf.ssm.service.ScoreService;
import com.sf.ssm.utils.JsonUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by Qi on 2017/3/31.
 */
@RestController
@RequestMapping("/test")
public class TestController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private ScoreService scoreService;
    @Autowired
    private GagService gagService;
    @Autowired
    private RedisTemplate redisTemplate;

    @RequestMapping(value = "/testMethod",produces="text/html;charset=UTF-8", method = {RequestMethod.GET,RequestMethod.GET})
    public String test() {
        Score score = new Score();
//        score.setChangeType("玩游戏");
//        score.setScore(10);
//        scoreService.insertScore(score);
        return JSON.toJSONString(score);
    }
    @RequestMapping(value = "/testRedis",produces="text/html;charset=UTF-8", method = {RequestMethod.GET,RequestMethod.GET})
    public String testRedis(Long id){
        List<Gag> gagList= null;
        try {
            String resulthget = redisTemplate.hget("禁言表", id + "");
            if (resulthget != null) {
                //字符串转为list
                System.out.println("有缓存啦啦啦！！！");
                JSONArray array = JSONArray.parseArray(resulthget);
                gagList = (List) array;
            } else {
                System.out.println("禁言表没查过");
                gagList= gagService.findByUserId(id);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            String cacheString = JsonUtils.objectToJson(gagList);
            redisTemplate.hset("禁言表", id + "", cacheString);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return JSON.toJSONString(gagList);
    }
}
