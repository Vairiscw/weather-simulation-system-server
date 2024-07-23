package com.example.wssserver.services;

import com.example.wssserver.data.environment.voice.Voice;
import com.example.wssserver.repositories.VoiceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VoiceService {
    @Autowired
    VoiceRepository voiceRepository;

    public List<Voice> findAll() {
        return voiceRepository.findAll();
    }
}
