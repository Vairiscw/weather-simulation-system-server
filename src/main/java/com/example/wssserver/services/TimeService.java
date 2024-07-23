package com.example.wssserver.services;

import com.example.wssserver.data.environment.time.Time;
import com.example.wssserver.repositories.TimeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TimeService {
    @Autowired
    TimeRepository timeRepository;

    public List<Time> findAll() {
        return timeRepository.findAll();
    }
}
