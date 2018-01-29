package com.vehicle.entity;



import java.io.Serializable;
import java.util.Date;

public class vehicle implements Serializable {
    private Integer vehicleId;

    private String vin;

    private Integer iccId;

    private Integer modeInfoTypeId;

    private Integer cityId;

    private String vehicleCode;

    private Integer provinceId;

    private Integer vehicleStatus;

    private Integer chargingState;

    private Integer operationMode;

    private Integer speed;

    private Integer cumulativeMileage;

    private Integer totalVoltage;

    private Integer totalCurrent;

    private Integer soc;

    private Integer dc_dcStatus;

    private Integer stall;

    private Integer resistance;


    private Date manufactureTime;

    private  String vehicleColor;

    public Date getManufactureTime() {
        return manufactureTime;
    }

    public void setManufactureTime(Date manufactureTime) {
        this.manufactureTime = manufactureTime;
    }

    public String getVehicleColor() {
        return vehicleColor;
    }

    public void setVehicleColor(String vehicleColor) {
        this.vehicleColor = vehicleColor;
    }



    public Integer getVehicleId() {
        return vehicleId;
    }

    public void setVehicleId(Integer vehicleId) {
        this.vehicleId = vehicleId;
    }

    public String getVin() {
        return vin;
    }

    public void setVin(String vin) {
        this.vin = vin == null ? null : vin.trim();
    }

    public Integer getIccId() {
        return iccId;
    }

    public void setIccId(Integer iccId) {
        this.iccId = iccId;
    }

    public Integer getModeInfoTypeId() {
        return modeInfoTypeId;
    }

    public void setModeInfoTypeId(Integer modeInfoTypeId) {
        this.modeInfoTypeId = modeInfoTypeId;
    }

    public Integer getCityId() {
        return cityId;
    }

    public void setCityId(Integer cityId) {
        this.cityId = cityId;
    }

    public String getVehicleCode() {
        return vehicleCode;
    }

    public void setVehicleCode(String vehicleCode) {
        this.vehicleCode = vehicleCode == null ? null : vehicleCode.trim();
    }

    public Integer getProvinceId() {
        return provinceId;
    }

    public void setProvinceId(Integer provinceId) {
        this.provinceId = provinceId;
    }

    public Integer getVehicleStatus() {
        return vehicleStatus;
    }

    public void setVehicleStatus(Integer vehicleStatus) {
        this.vehicleStatus = vehicleStatus;
    }

    public Integer getChargingState() {
        return chargingState;
    }

    public void setChargingState(Integer chargingState) {
        this.chargingState = chargingState;
    }

    public Integer getOperationMode() {
        return operationMode;
    }

    public void setOperationMode(Integer operationMode) {
        this.operationMode = operationMode;
    }

    public Integer getSpeed() {
        return speed;
    }

    public void setSpeed(Integer speed) {
        this.speed = speed;
    }

    public Integer getCumulativeMileage() {
        return cumulativeMileage;
    }

    public void setCumulativeMileage(Integer cumulativeMileage) {
        this.cumulativeMileage = cumulativeMileage;
    }

    public Integer getTotalVoltage() {
        return totalVoltage;
    }

    public void setTotalVoltage(Integer totalVoltage) {
        this.totalVoltage = totalVoltage;
    }

    public Integer getTotalCurrent() {
        return totalCurrent;
    }

    public void setTotalCurrent(Integer totalCurrent) {
        this.totalCurrent = totalCurrent;
    }

    public Integer getSoc() {
        return soc;
    }

    public void setSoc(Integer soc) {
        this.soc = soc;
    }

    public Integer getDc_dcStatus() {
        return dc_dcStatus;
    }

    public void setDc_dcStatus(Integer dc_dcStatus) {
        this.dc_dcStatus = dc_dcStatus;
    }

    public Integer getStall() {
        return stall;
    }

    public void setStall(Integer stall) {
        this.stall = stall;
    }

    public Integer getResistance() {
        return resistance;
    }

    public void setResistance(Integer resistance) {
        this.resistance = resistance;
    }
}