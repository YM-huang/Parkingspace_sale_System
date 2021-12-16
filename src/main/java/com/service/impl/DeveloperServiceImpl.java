package com.service.impl;

import com.bean.*;
import com.dao.*;
import com.dao.DeveloperMapper;
import com.service.DeveloperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

@Service
public class DeveloperServiceImpl implements DeveloperService {
    @Autowired
    private DeveloperMapper developerMapper;
    @Autowired
    private ParkingSpaceMapper parkingSpaceMapper;
    @Autowired
    private OrderMapper orderMapper;
    @Autowired
    private ExamineApproveMapper examineApproveMapper;
    @Autowired
    private DevelopersMapper developersMapper;

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
    public List<Order> selectOrder(int pageNum, int pageSize, String search,String did){
        return orderMapper.selectOrder(pageNum,pageSize,search,did);
    }

    //修改订单
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
        order.setContractContent(contractContent+".jpg");
        order.setFinalPrice(Double.parseDouble(finalPrice));
        order.setFinalPaymentTime(dateFormat.parse(finalPaymentTime));
        order.setState(2);
        if(orderMapper.updateOrder(order)){
            return true;
        }
        return false;
    }

    @Override
    @Transactional
    public boolean insertExamineApprove(String id,String developer_id, String developerName) {
        ExamineApprove examineApprove=new ExamineApprove();
        //用于设置开发者的邮箱
        examineApprove.setDeveloperId(developer_id);
        //用于设置开发者的名字
        examineApprove.setDeveloperName(developerName);
        examineApprove.setId(id);
        examineApprove.setFile(id+".jpg");
        examineApprove.setState(0);
        if(examineApproveMapper.insertExamineApprove(examineApprove)){
            return true;
        }
        return false;
    }

    @Override
    @Transactional
    public ArrayList<Integer> selectStatics(String did){
//        订单信息统计
        List<Order> list = orderMapper.selectAllOrderByDid(did);
        ArrayList<Integer> result = new ArrayList<>();
        Iterator<Order> it = list.iterator();
        int order_wait = 0;
        int order_ing = 0;
        int order_finish = 0;
        int order_stop = 0;
        while(it.hasNext()) {
            int s =it.next().getState();
            if(s==1){
                order_wait=order_wait+1;
            }
            else if(s==2){
                order_ing=order_ing+1;
            }
            else if(s==3) {
                order_finish=order_finish+1;
            }
            else if(s>3){
                order_stop=order_stop+1;
            }
        }
//        账户金额统计
        int money= developersMapper.selectMoney(did).intValue();
//        商品数量统计
        int parking_space =parkingSpaceMapper.countParkSpace(did);
//        加入返回列表
        result.add(parking_space);
        result.add(money);
        result.add(order_wait);
        result.add(order_ing);
        result.add(order_finish);
        result.add(order_stop);
        return result;
    }

    @Override
    @Transactional
    public List<OrderStatistic> selectStatistic1(String did,int state){
//        订单信息统计
        List<OrderStatistic> list = orderMapper.selectStatisticOrder(did,state);
        return list;

    }

//    车位管理
    @Override
    @Transactional
    public List<ParkingSpace> selectParkingSpace(int pageNum, int pageSize, String search,String did){
        return parkingSpaceMapper.selectParkSpace(pageNum,pageSize,search,did);
    }
}
