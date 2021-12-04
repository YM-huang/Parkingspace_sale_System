package com.service.impl;

import com.bean.Administrators;
import com.dao.AdministratorsMapper;
import com.service.AdministratorsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class AdministratorsServiceImpl implements AdministratorsService {
    @Autowired
    private AdministratorsMapper administratorsMapper;

    @Override
    public Administrators selectAdministratorsByName(String administratorsName) {
        return administratorsMapper.selectAdministratorsByName(administratorsName);
    }

    @Override
    public boolean updateAdministratorsMoney(double money, String administratorsName) {
        return administratorsMapper.updateAdministratorsMoney(money,administratorsName);
    }
}
