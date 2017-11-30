package com.sf.ssm.dao;

import com.sf.ssm.entity.Gag;

import java.util.List;

/**
 * Created by Qi on 2017/3/31.
 */
public interface GagDao {
    public int insertGag(Gag gag);
    List<Gag> findByUserId(Long id);
}
