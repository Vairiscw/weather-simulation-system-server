package com.example.wssserver.controllers;

import com.example.wssserver.data.environment.scene.Scene;
import com.example.wssserver.data.environment.time.Time;
import com.example.wssserver.data.environment.video.Video;
import com.example.wssserver.data.environment.voice.Voice;
import com.example.wssserver.data.environment.weather.Weather;
import com.example.wssserver.services.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/environments")
public class EnvironmentsController {
    @Autowired
    SceneService sceneService;
    @Autowired
    TimeService timeService;
    @Autowired
    VideoService videoService;
    @Autowired
    VoiceService voiceService;
    @Autowired
    WeatherService service;

    @GetMapping("/scene")
    public List<Scene> getAllScenes() {
        return sceneService.findAll();
    }
    @PostMapping("/scene")
    public Scene addScene(@RequestBody Scene scene) {
        return sceneService.save(scene);
    }


    @GetMapping("/time")
    public List<Time> getAllTimes() {
        return timeService.findAll();
    }


    @GetMapping("/video")
    public List<Video> getAllVideos() {
        return videoService.findAll();
    }


    @GetMapping("/voice")
    public List<Voice> getAllVoices() {
        return voiceService.findAll();
    }


    @GetMapping("/weather")
    public List<Weather> getAllWeathers() {
        return service.findAll();
    }

}
