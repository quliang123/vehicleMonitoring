package com.vehicle.entity;

import java.io.Serializable;

public class dicData implements Serializable {
    private Integer dicDataATid;
    private Integer dicDataTypeId;

    private Integer dicDataid;

    private String dicDataValue;
    public Integer getDicDataATid() {
        return dicDataATid;
    }

    public void setDicDataATid(Integer dicDataATid) {
        this.dicDataATid = dicDataATid;
    }

    public Integer getDicDataTypeId() {
        return dicDataTypeId;
    }

    public void setDicDataTypeId(Integer dicDataTypeId) {
        this.dicDataTypeId = dicDataTypeId;
    }

    public Integer getDicDataid() {
        return dicDataid;
    }

    public void setDicDataid(Integer dicDataid) {
        this.dicDataid = dicDataid;
    }

    public String getDicDataValue() {
        return dicDataValue;
    }

    public void setDicDataValue(String dicDataValue) {
        this.dicDataValue = dicDataValue;
    }

}