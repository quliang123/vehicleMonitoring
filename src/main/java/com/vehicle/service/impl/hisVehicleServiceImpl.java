package com.vehicle.service.impl;

import com.vehicle.dao.vehicleHistoryMapper;
import com.vehicle.service.hisVehicleService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author 123
 * @CreateTime 2018/01/24
 * Created by 123 on 2018/01/24.
 */
@Service("hisVehicleService")
public class hisVehicleServiceImpl implements hisVehicleService {

    Logger logger = Logger.getLogger(hisVehicleServiceImpl.class);
    @Autowired
    private vehicleHistoryMapper vehicleMapper;

    public int addVehicleHis(String his) {
        return vehicleMapper.addVehicleHis(his);
    }
}
