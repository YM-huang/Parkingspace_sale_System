package com.service;


import com.bean.ParkingSpace;
import com.bean.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserService {

    User selectUserByUserName(String username);

    User selectUserByUserId(String userIdentity);

    User selectNameById(String userIdentity);

    User userLogin(String username, String password);


    boolean insertUser(User user);

    boolean insertUserPassword(User user);

    boolean updateUserInfo(User user);

    List<ParkingSpace> selectParkingSpace(int pageNum, int pageSize, String search, String did);

}
