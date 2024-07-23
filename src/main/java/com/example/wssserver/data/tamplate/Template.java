package com.example.wssserver.data.tamplate;

import com.example.wssserver.data.environment.scene.Scene;
import com.example.wssserver.data.environment.time.Time;
import com.example.wssserver.data.environment.video.Video;
import com.example.wssserver.data.environment.voice.Voice;
import com.example.wssserver.data.environment.weather.Weather;
import jakarta.persistence.*;

@Entity
@Table(name = "templates")
public class Template {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String author;
    private String name;
    @OneToOne
    @JoinColumn(name = "scene")
    private Scene scene;
    @OneToOne
    @JoinColumn(name = "time")
    private Time time;
    @OneToOne
    @JoinColumn(name = "video")
    private Video video;
    @JoinColumn(name = "voice")
    @OneToOne
    private Voice voice;
    @OneToOne
    @JoinColumn(name = "weather")
    private Weather weather;


    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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
