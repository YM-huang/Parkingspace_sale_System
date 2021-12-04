package com.service;

import com.bean.Administrators;

public interface AdministratorsService {
    Administrators selectAdministratorsByName(String administratorsName);
    boolean updateAdministratorsMoney(double money,String administratorsName);
}
