package com.vehicle.service.impl;


import com.vehicle.entity.vehicle;
import com.vehicle.service.vehicleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.vehicle.dao.vehicleMapper;

/**
 * Created by 123 on 2018/01/14.
 */
@Service("vehicleService")//@Service("modelsInfoService")
public class vehicleServiceImpl implements vehicleService {

    @Autowired
    private vehicleMapper vehicleMapper;


    @Override
    public vehicle getVehicleByVin(String vin) {
        return vehicleMapper.getVehicleByVin(vin);
    }
}
