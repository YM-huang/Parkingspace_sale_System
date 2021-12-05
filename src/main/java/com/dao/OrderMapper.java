package com.dao;
import com.bean.Order;
import org.apache.ibatis.annotations.Param;
public interface OrderMapper {
    void insertOrder(Order order);
}
