package com.service.impl;

import com.bean.Developer_administrator;
import com.dao.DeveloperMapper;
import com.bean.Order;
import com.bean.ParkingSpace;
import com.bean.User;
import com.dao.DeveloperMapper;
import com.dao.OrderMapper;
import com.dao.ParkingSpaceMapper;
import com.dao.UserMapper;
import com.service.DeveloperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

@Service
public class DeveloperServiceImpl implements DeveloperService {
    @Autowired
    private DeveloperMapper developerMapper;
    @Autowired
    private ParkingSpaceMapper parkingSpaceMapper;
    @Autowired
    private OrderMapper orderMapper;
    @Override
    public Developer_administrator login(String username, String password){
        return developerMapper.login(username,password);
    }

//    添加上架车位
    @Override
    public boolean insertParkSpace (String residentialQuartersId, String address, String price,String pid){
        ParkingSpace parkingSpace = new ParkingSpace();
        parkingSpace.setId(pid);
        parkingSpace.setPrice(Double.parseDouble(price));
        parkingSpace.setAddress(address);
        parkingSpace.setPhoto(pid);
        parkingSpace.setResidentialQuartersId(residentialQuartersId);
        parkingSpace.setState(1);
        parkingSpace.setViews(0);
        parkingSpace.setBuyersId(null);
        parkingSpace.setPreferentialMeasures(null);
        return parkingSpaceMapper.insertParkSpace(parkingSpace);
    }
    @Override
    public List<Order> selectOrder(int pageNum, int pageSize, String search,String uid){
        return orderMapper.selectOrder(pageNum,pageSize,search,uid);
    }
    @Override
    @Transactional
    public boolean updateOrder(String orderId,String contractInitiator, String contractContent, String finalPrice, String finalPaymentTime,String did) throws ParseException {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");//可以方便地修改日期格式
        List<Order> list = orderMapper.selectOrder(1,1,orderId,did);
        Order order = (Order) list.get(0);
        if (order==null){
            return false;
        }
        order.setContractInitiator(contractInitiator);
        order.setContractContent(contractContent);
        order.setFinalPrice(Double.parseDouble(finalPrice));
        order.setFinalPaymentTime(dateFormat.parse(finalPaymentTime));
        order.setState(2);
        if(orderMapper.updateOrder(order)){
            return true;
        }
        return false;
    }
}
