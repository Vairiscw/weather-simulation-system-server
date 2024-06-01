package com.example.wssserver.components;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/temp")
public class TempController {
    private final TempService tempService;

    @Autowired  //Автозаполнение
    public TempController(TempService tempService) {
        this.tempService = tempService;
    }

    @GetMapping
    public List<Temperature> getTemperature(){
        return tempService.getTemp();
    }

    @PostMapping(path = "/add")
    public void addNewTemperature(@RequestBody Temperature tmp) {
        tempService.addNewTemp(tmp);
    }
}
