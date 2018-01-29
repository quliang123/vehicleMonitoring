package com.vehicle.entity;

import java.io.Serializable;

public class dictionaryType implements Serializable {
    private Integer dictypeid;

    private String dictypename;

    private dicData data;

    public dicData getData() {
        return data;
    }

    public void setData(dicData data) {
        this.data = data;
    }

    public Integer getDictypeid() {
        return dictypeid;
    }

    public void setDictypeid(Integer dictypeid) {
        this.dictypeid = dictypeid;
    }

    public String getDictypename() {
        return dictypename;
    }

    public void setDictypename(String dictypename) {
        this.dictypename = dictypename;
    }

}