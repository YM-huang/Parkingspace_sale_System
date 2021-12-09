package com.service;

import com.bean.Developer_administrator;
import com.bean.Order;
import com.bean.User;
import org.springframework.web.multipart.MultipartFile;

import java.text.ParseException;
import java.util.List;

public interface DeveloperService {
    Developer_administrator login(String username,String password);

    boolean insertParkSpace (String residentialQuartersId, String address, String price, String pid);

    List<Order> selectOrder(int pageNum,int pageSize,String search,String uid);

    boolean updateOrder(String orderId,String contractInitiator, String contractContent, String finalPrice, String finalPaymentTime, String did) throws ParseException;

    }
