package com.sf.ssm.service;

/**
 * Created by Qi on 2017/6/6.
 */
public interface JavaMail {
    void send(String hisEmail, String subject, String content);
}
