package com.app;

import com.bean.Customer;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.InputStream;
import java.util.Properties;

public class test {
    public static void main(String[] args) {
        try {
            ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
            SqlSession sqlSession = (SqlSession) ctx.getBean("sqlSession");
            Customer customer=null;
            customer=sqlSession.selectOne("getCustomerByID",1);
            System.out.println(customer.getAccount());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}