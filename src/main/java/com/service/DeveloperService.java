package com.service;

import com.bean.Developer_administrator;

public interface DeveloperService {
    Developer_administrator login(String username,String password);
}
