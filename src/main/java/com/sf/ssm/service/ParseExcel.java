package com.sf.ssm.service;

import com.sf.ssm.entity.GoodDetails;

import java.io.File;
import java.util.List;

/**
 * Created by Qi on 2017/5/27.
 */
public interface ParseExcel {
    List<GoodDetails> parseExcel(File xlsFile, String filename);
}
