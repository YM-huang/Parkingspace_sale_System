package com.service;

import com.bean.Developer_administrator;
import com.bean.User;

public interface DeveloperService {
    Developer_administrator login(String username,String password);
}
