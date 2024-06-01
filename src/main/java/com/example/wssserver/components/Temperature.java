package com.example.wssserver.components;

import jakarta.persistence.*;


@Entity
@Table
public class Temperature {
    @Id
    private Long id;
    private Integer temperature;
    private String time;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getTemperature() {
        return temperature;
    }

    public void setTempSetting(Integer temperature) {
        this.temperature = temperature;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public Temperature(){}
}
