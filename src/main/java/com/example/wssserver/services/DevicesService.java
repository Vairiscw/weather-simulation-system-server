package com.example.wssserver.services;

import com.example.wssserver.data.devices.Devices;
import com.example.wssserver.repositories.DevicesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class DevicesService {

    @Autowired
    DevicesRepository devicesRepository;

    public Integer getDeviceStateByName(String name){
        Optional<Devices> devices = devicesRepository.findDevicesByName(name);
        if (devices.isPresent()) {
            return devices.get().getState();
        }
        return 0;
    }

    public Optional<Devices> findByName(String name) {
        return devicesRepository.findDevicesByName(name);
    }

    public List<Devices> findAll() {
        return devicesRepository.findAll();
    }

    public Devices saveNewState(Devices device) {
        return devicesRepository.save(device);
    }
}
