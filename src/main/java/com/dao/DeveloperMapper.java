package com.dao;

import com.bean.Developer_administrator;
import org.apache.ibatis.annotations.Param;

public interface DeveloperMapper {
    Developer_administrator login(@Param("developerId") String username,@Param("password") String password);
    boolean insertDeveloper_administrator(Developer_administrator developer_administrator);
}
