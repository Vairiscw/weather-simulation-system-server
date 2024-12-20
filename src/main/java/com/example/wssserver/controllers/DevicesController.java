package com.example.wssserver.controllers;

import com.example.wssserver.data.devices.Devices;
import com.example.wssserver.data.tamplate.Template;
import com.example.wssserver.services.DevicesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;
import java.util.Optional;

@RestController
@RequestMapping("/devices")
public class DevicesController {
    @Autowired
    DevicesService devicesService;

    @GetMapping
    public List<Devices> getDevices() {
        return devicesService.findAll();
    }
    @GetMapping("/{name}")
    public Integer getDeviceStatus(@PathVariable String name) {
        return devicesService.getDeviceStateByName(name);
    }

    @PutMapping("/{name}")
    public ResponseEntity<Devices> updateDevice(@PathVariable String name, @RequestParam(name = "state") Integer newState) {
        Optional<Devices> devices = devicesService.findByName(name);
        if (devices.isPresent()) {
            Devices updatedDevice = devices.get();
            updatedDevice.setState(newState);
            return ResponseEntity.ok(devicesService.saveNewState(updatedDevice));
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    public void setDevices(Template template) {
        if (Objects.equals(template.getWeather().getDesignation(), "cloudy")) {
            Optional<Devices> fan = devicesService.findByName("fan");
            fan.ifPresent(devices -> devices.setState(1));
            Optional<Devices> humidifier = devicesService.findByName("humidifier");
            humidifier.ifPresent(devices -> devices.setState(0));
        } else if (Objects.equals(template.getWeather().getDesignation(), "rain")) {
            Optional<Devices> fan = devicesService.findByName("fan");
            fan.ifPresent(devices -> devices.setState(1));
            Optional<Devices> humidifier = devicesService.findByName("humidifier");
            humidifier.ifPresent(devices -> devices.setState(1));
        } else if (Objects.equals(template.getWeather().getDesignation(), "sunny")) {
            Optional<Devices> fan = devicesService.findByName("fan");
            fan.ifPresent(devices -> devices.setState(0));
            Optional<Devices> humidifier = devicesService.findByName("humidifier");
            humidifier.ifPresent(devices -> devices.setState(0));
        }
        if (Objects.equals(template.getTime().getDesignation(), "morning")) {
            Optional<Devices> freshener = devicesService.findByName("freshener");
            freshener.ifPresent(devices -> devices.setState(1));
            Optional<Devices> humidifier = devicesService.findByName("humidifier");
            humidifier.ifPresent(devices -> devices.setState(1));
        } else if (Objects.equals(template.getTime().getDesignation(), "evening")) {
            Optional<Devices> freshener = devicesService.findByName("freshener2");
            freshener.ifPresent(devices -> devices.setState(1));
            Optional<Devices> humidifier = devicesService.findByName("humidifier");
            humidifier.ifPresent(devices -> devices.setState(0));
            Optional<Devices> fan = devicesService.findByName("fan");
            fan.ifPresent(devices -> devices.setState(1));
        } else if (Objects.equals(template.getTime().getDesignation(), "night")) {
            Optional<Devices> freshener = devicesService.findByName("freshener");
            freshener.ifPresent(devices -> devices.setState(0));
            Optional<Devices> freshener2 = devicesService.findByName("freshener2");
            freshener2.ifPresent(devices -> devices.setState(0));
        }

    }
}
