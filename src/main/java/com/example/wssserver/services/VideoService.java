package com.example.wssserver.services;

import com.example.wssserver.data.environment.video.Video;
import com.example.wssserver.repositories.VideoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VideoService {
    @Autowired
    VideoRepository videoRepository;

    public List<Video> findAll() {
        return videoRepository.findAll();
    }
}
