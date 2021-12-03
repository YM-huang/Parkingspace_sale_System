package com.app;

import com.bean.Customer;
import com.bean.Developer_administrator;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.InputStream;
import java.util.HashMap;
import java.util.Properties;

public class test {
    public static void main(String[] args) {
        try {
            ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
            SqlSession sqlSession = (SqlSession) ctx.getBean("sqlSession");
            HashMap map = new HashMap();
            map.put("id","zjut");
            map.put("pwd","123");
            Developer_administrator developer_administrator=new Developer_administrator();
            developer_administrator=sqlSession.selectOne("getDeveloper",map);
            System.out.println(developer_administrator.getRole());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}