package com.dao;
import com.bean.Order;
import org.apache.ibatis.annotations.Param;
public interface OrderMapper {
    boolean insertOrder(Order order);
}
