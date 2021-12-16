package com.service;

import com.bean.*;
import org.springframework.web.multipart.MultipartFile;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

public interface DeveloperService {
    Developer_administrator login(String username,String password);

    boolean insertParkSpace (String residentialQuartersId, String address, String price, String did);

    List<Order> selectOrder(int pageNum,int pageSize,String search,String uid);

    boolean updateOrder(String orderId,String contractInitiator, String contractContent, String finalPrice, String finalPaymentTime, String did) throws ParseException;

    boolean insertExamineApprove(String id,String developer_id, String developerName);

    ArrayList<Integer> selectStatics(String did);

    List<OrderStatistic> selectStatistic1(String did,int state);

    List<ParkingSpace> selectParkingSpace(int pageNum, int pageSize, String search, String did);
    }
