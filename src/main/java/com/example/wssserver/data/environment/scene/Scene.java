package com.example.wssserver.data.environment.scene;

import jakarta.persistence.*;

@Entity
@Table(name = "scenes")
public class Scene {

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

    public Scene(Long id, String designation) {
        this.id = id;
        this.designation = designation;
    }

    public Scene(String designation) {
        this.designation = designation;
    }

    public Scene() {

    }
}
