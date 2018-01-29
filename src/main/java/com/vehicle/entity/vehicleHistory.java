package com.vehicle.entity;

/**
 * @author 123
 * @CreateTime 2018/01/24
 * Created by 123 on 2018/01/24.
 */

public class vehicleHistory {
    private Integer hisVehicleId;
    private String hisContent;

    public Integer getHisVehicleId() {
        return hisVehicleId;
    }

    public void setHisVehicleId(Integer hisVehicleId) {
        this.hisVehicleId = hisVehicleId;
    }

    public String getHisContent() {
        return hisContent;
    }

    public void setHisContent(String hisContent) {
        this.hisContent = hisContent;
    }

    public vehicleHistory() {
    }

    public vehicleHistory(String hisContent) {
        this.hisContent = hisContent;
    }
}
