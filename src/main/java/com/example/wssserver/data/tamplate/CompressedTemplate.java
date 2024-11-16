package com.example.wssserver.data.tamplate;

import com.example.wssserver.data.environment.scene.Scene;
import com.example.wssserver.data.environment.time.Time;
import com.example.wssserver.data.environment.video.Video;
import com.example.wssserver.data.environment.voice.Voice;
import com.example.wssserver.data.environment.weather.Weather;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;

public class CompressedTemplate {
    private Scene scene;
    private Time time;
    private Video video;
    private Voice voice;
    private Weather weather;

    public CompressedTemplate(Scene scene, Time time, Video video, Voice voice, Weather weather) {
        this.scene = scene;
        this.time = time;
        this.video = video;
        this.voice = voice;
        this.weather = weather;
    }

    public Scene getScene() {
        return scene;
    }

    public void setScene(Scene scene) {
        this.scene = scene;
    }

    public Time getTime() {
        return time;
    }

    public void setTime(Time time) {
        this.time = time;
    }

    public Video getVideo() {
        return video;
    }

    public void setVideo(Video video) {
        this.video = video;
    }

    public Voice getVoice() {
        return voice;
    }

    public void setVoice(Voice voice) {
        this.voice = voice;
    }

    public Weather getWeather() {
        return weather;
    }

    public void setWeather(Weather weather) {
        this.weather = weather;
    }
}
