package com.service;


import com.bean.User;
import org.apache.ibatis.annotations.Param;

public interface UserService {

    User selectUserByUserName(String username);

    User userLogin(String username, String password);


    boolean insertUser(User user);

}
