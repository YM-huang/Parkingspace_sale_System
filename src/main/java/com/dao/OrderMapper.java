package com.dao;
import com.bean.Order;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderMapper {
    boolean insertOrder(Order order);
    List<Order> selectOrder(@Param("pageNum") int pageNum,@Param("pageSize") int pageSize, @Param("search") String search,@Param("did") String did);
    boolean updateOrder(Order order);
}
