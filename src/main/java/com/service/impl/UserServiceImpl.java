package com.service.impl;

import com.bean.User;
import com.dao.UserMapper;
import com.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author sushuai
 * @date 2019/03/03/23:02
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;


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



}
