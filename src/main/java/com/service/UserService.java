package com.service;

import com.bean.User;

/**
 * @author sushuai
 * @date 2019/03/03/23:00
 */
public interface UserService {

    User selectUserByUserName(String username);


    boolean insertUser(User user);

}
