package com.vehicle.entity;

import java.util.Date;

/**
 * @author 123
 * @CreateTime 2018/01/26
 * Created by 123 on 2018/01/26.
 */

public class message {
    private Integer dataCode;
    private String infoBody;
    private String vehicleCode;
    private String Vin;
    private Date messageTime;
    private Date acceptTime;
    private String messageType;
    private Integer messageLength;
    private String beginTime;
    private String endTime;

    public String getBeginTime() {
        return beginTime;
    }

    public void setBeginTime(String beginTime) {
        this.beginTime = beginTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public Integer getDataCode() {
        return dataCode;
    }

    public void setDataCode(Integer dataCode) {
        this.dataCode = dataCode;
    }

    public String getInfoBody() {
        return infoBody;
    }

    public void setInfoBody(String infoBody) {
        this.infoBody = infoBody;
    }

    public String getVehicleCode() {
        return vehicleCode;
    }

    public void setVehicleCode(String vehicleCode) {
        this.vehicleCode = vehicleCode;
    }

    public String getVin() {
        return Vin;
    }

    public void setVin(String vin) {
        Vin = vin;
    }

    public Date getMessageTime() {
        return messageTime;
    }

    public void setMessageTime(Date messageTime) {
        this.messageTime = messageTime;
    }

    public Date getAcceptTime() {
        return acceptTime;
    }

    public void setAcceptTime(Date acceptTime) {
        this.acceptTime = acceptTime;
    }

    public String getMessageType() {
        return messageType;
    }

    public void setMessageType(String messageType) {
        this.messageType = messageType;
    }

    public Integer getMessageLength() {
        return messageLength;
    }

    public void setMessageLength(Integer messageLength) {
        this.messageLength = messageLength;
    }


}
