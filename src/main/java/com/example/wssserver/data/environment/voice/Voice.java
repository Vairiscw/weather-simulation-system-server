package com.example.wssserver.data.environment.voice;

import jakarta.persistence.*;

@Entity
@Table(name = "voices")
public class Voice {
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

    public Voice(Long id, String designation) {
        this.id = id;
        this.designation = designation;
    }

    public Voice() {
    }
}
