package com.service;
import com.bean.Order;
public interface OrderService {
    boolean insertOrder(String parkingSpaceId,String contractSignatory,String contractInitiator);
}
