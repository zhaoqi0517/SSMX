package com.sf.ssm.test;

import com.sf.ssm.service.GoodService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by Qi on 2017/4/2.
 */
public class RankTest {
    public static void main(String[] args) throws Exception {
        ApplicationContext ctx = new ClassPathXmlApplicationContext("/spring/spring-*.xml");
        GoodService gds = (GoodService)ctx.getBean("goodService");
        System.out.println("桌子"+gds.findIndex("桌子",0,30));

    }
}
