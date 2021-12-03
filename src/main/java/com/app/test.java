package com.app;

import com.bean.Developer_administrator;
import com.mapper.Developer;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.HashMap;

public class test {
    public static void main(String[] args) {
        try {
            ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
            Developer developer=(Developer)ctx.getBean("Developer");
            HashMap map = new HashMap();
            map.put("id","zjut");
            map.put("pwd","123");
            Developer_administrator developer_administrator=developer.login(map);
            System.out.println(developer_administrator.getRole());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}