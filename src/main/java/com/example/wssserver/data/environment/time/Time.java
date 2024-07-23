package com.example.wssserver.data.environment.time;

import jakarta.persistence.*;

@Entity
@Table(name = "times")
public class Time {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String designation;

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }


    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public Time(Long id, String designation) {
        this.id = id;
        this.designation = designation;
    }

    public Time(String designation) {
        this.designation = designation;
    }

    public Time() {
    }
}
