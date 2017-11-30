package com.sf.ssm.serviceImpl;

import com.sf.ssm.dao.GagDao;
import com.sf.ssm.entity.Gag;
import com.sf.ssm.service.GagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Qi on 2017/4/1.
 */
@Service
public class GagServiceImpl implements GagService {
    @Autowired
    private GagDao gagDao;
    @Override
    public int insertGag(Gag gag) {
        int t = gagDao.insertGag(gag);
        return t;
    }

    @Override
    public List<Gag> findByUserId(Long id) {
        List<Gag> gagList=gagDao.findByUserId(id);
        return gagList;
    }
}
