package com.example.wssserver.components;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Service
public class TempService {

    private final TempRepository repository;

    @Autowired
    public TempService(TempRepository tempRepository) { this.repository = tempRepository; }

    @GetMapping
    public List<Temperature> getTemp(){
        return repository.findAll();
    }

    public void addNewTemp(Temperature tmp) {
        repository.save(tmp);
    }
}
