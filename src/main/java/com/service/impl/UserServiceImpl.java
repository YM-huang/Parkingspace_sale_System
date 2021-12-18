package com.service.impl;

import com.bean.ParkingSpace;
import com.bean.User;
import com.dao.ParkingSpaceMapper;
import com.dao.UserMapper;
import com.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author sushuai
 * @date 2019/03/03/23:02
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;
    @Autowired
    private ParkingSpaceMapper parkingSpaceMapper;


    @Override
    public User selectUserByUserName(String username) {
        return userMapper.selectUserByUserName(username);
    }

    @Override
    public User selectUserByUserId(String userIdentity) {
        return userMapper.selectUserByUserName(userIdentity);
    }

    @Override
    public User userLogin(String username,String password){return userMapper.userLogin(username,password);};

    @Override
    public boolean insertUser(User user) {
        return userMapper.insertUser(user);
    }

    @Override
    public boolean insertUserPassword(User user){ return userMapper.insertUserPassword(user);};

    @Override
    public User selectNameById(String userIdentity){ return userMapper.selectNameById(userIdentity);}

    @Override
    public boolean updateUserInfo(User user){return userMapper.updateUserInfo(user);};

    //    车位管理
    @Override
    @Transactional
    public List<ParkingSpace> selectParkingSpace(int pageNum, int pageSize, String search, String did){
        return parkingSpaceMapper.selectParkSpace(pageNum,pageSize,search,did);
    }




}
