package com.dao;
import com.bean.User;
import org.apache.ibatis.annotations.Param;
import com.bean.ParkingSpace;
public interface ParkingSpaceMapper {
    ParkingSpace selectParkingSpaceById(@Param("id") String id);
    boolean insertParkSpace(ParkingSpace parkingSpace);
}
