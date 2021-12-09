package com.service.impl;

import com.bean.Order;
import com.dao.OrderMapper;
import com.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderMapper orderMapper;
    @Override
    public boolean insertOrder(String parkingSpaceId,String contractSignatory,String contractInitiator) {
        Order order =new Order();
        Date now = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");//可以方便地修改日期格式
        long  timeNew =  System.currentTimeMillis()/ 1000; // 10位数的时间戳
        String OR="OR"+timeNew;
        order.setOrderId(OR);
        order.setState(1);
        order.setDeposit(5000);
        order.setParkingSpaceId(parkingSpaceId);
        order.setContractSignatory(contractSignatory);
        order.setContractInitiator(contractInitiator);
        order.setOrderTime(now);
        return orderMapper.insertOrder(order);
    }
}
