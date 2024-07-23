package com.example.wssserver.services;

import com.example.wssserver.data.environment.scene.Scene;
import com.example.wssserver.repositories.SceneRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SceneService {
    @Autowired
    SceneRepository sceneRepository;

    public List<Scene> findAll() {
        return sceneRepository.findAll();
    }
    public Scene save(Scene scene) {
        return sceneRepository.save(scene);
    }
}
