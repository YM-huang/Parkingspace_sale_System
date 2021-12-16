package com.service;


import com.bean.User;
import org.apache.ibatis.annotations.Param;

public interface UserService {

    User selectUserByUserName(String username);

    User selectUserByUserId(String userIdentity);

    User selectNameById(String userIdentity);

    User userLogin(String username, String password);


    boolean insertUser(User user);

    boolean insertUserPassword(User user);

}
