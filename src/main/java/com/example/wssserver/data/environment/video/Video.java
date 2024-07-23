package com.example.wssserver.data.environment.video;

import jakarta.persistence.*;

@Entity
@Table(name = "videos")
public class Video {
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

    public Video(Long id, String designation) {
        this.id = id;
        this.designation = designation;
    }

    public Video(String designation) {
        this.designation = designation;
    }

    public Video() {
    }
}
