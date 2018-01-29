package com.vehicle.dao;

import com.vehicle.entity.vehicle;
import org.apache.ibatis.annotations.Param;
import org.apache.log4j.Logger;

import java.util.Date;
import java.util.List;

public interface vehicleMapper {
    static Logger logger = Logger.getLogger(vehicleMapper.class);

    public vehicle getVehicleByVin(String vin);
}