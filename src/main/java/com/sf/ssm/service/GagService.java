package com.sf.ssm.service;

import com.sf.ssm.entity.Gag;

import java.util.List;

/**
 * Created by Qi on 2017/4/1.
 */
public interface GagService {
    public int insertGag(Gag gag);
    List<Gag> findByUserId(Long id);
}
