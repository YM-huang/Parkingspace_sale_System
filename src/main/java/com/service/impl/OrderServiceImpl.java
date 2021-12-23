package com.service.impl;

import com.bean.Order;
import com.bean.ParkingSpace;
import com.dao.OrderMapper;
import com.dao.ParkingSpaceMapper;
import com.service.OrderService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderMapper orderMapper;
    @Autowired
    private ParkingSpaceMapper parkingSpaceMapper;
    @Override
    public boolean insertOrder(String parkingSpaceId,String contractSignatory,String contractInitiator) {
        Order order =new Order();
        Date now = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");//可以方便地修改日期格式
        //生成订单号
        long  timeNew =  System.currentTimeMillis()/ 1000; // 10位数的时间戳
        String OR="OR"+timeNew;
        //计算定金
        double money;
        ParkingSpace parkingSpace;
        parkingSpace = parkingSpaceMapper.selectParkingSpaceById(parkingSpaceId);
        money=parkingSpace.getPrice()*0.3;
        order.setOrderId(OR);
        order.setState(1);
        order.setDeposit(money);
        order.setParkingSpaceId(parkingSpaceId);
        order.setContractSignatory(contractSignatory);
        order.setContractInitiator(contractInitiator);
        order.setOrderTime(now);
        return orderMapper.insertOrder(order);
    }

    @Override
    public List<Order> selectUserOrder(String userIdentity){return orderMapper.selectUserOrder(userIdentity);};

    @Override
    public Order selectOrderById(String orderId){return orderMapper.selectOrderById(orderId);};
}
