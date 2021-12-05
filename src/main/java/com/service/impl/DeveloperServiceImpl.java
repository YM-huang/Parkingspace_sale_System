package com.service.impl;

import com.bean.Developer_administrator;
import com.dao.DeveloperMapper;
import com.service.DeveloperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DeveloperServiceImpl implements DeveloperService {
    @Autowired
    private DeveloperMapper developerMapper;

    @Override
    public Developer_administrator login(String username, String password){
        return developerMapper.login(username,password);
    }
}
