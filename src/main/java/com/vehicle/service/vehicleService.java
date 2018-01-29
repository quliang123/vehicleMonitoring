package com.vehicle.service;

import com.vehicle.entity.vehicle;
import org.apache.ibatis.annotations.Param;
import org.apache.log4j.Logger;

import java.util.Date;
import java.util.List;

public interface vehicleService {
    static Logger logger = Logger.getLogger(vehicleService.class);

    public vehicle getVehicleByVin(String vin);
}