package com.service;
import com.bean.Order;

import java.util.List;

public interface OrderService {
    boolean insertOrder(String parkingSpaceId,String contractSignatory,String contractInitiator);

    List<Order> selectUserOrder(String userIdentity);
}