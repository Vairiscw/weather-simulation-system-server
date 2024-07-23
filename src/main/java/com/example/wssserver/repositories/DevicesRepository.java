package com.example.wssserver.repositories;

import com.example.wssserver.data.devices.Devices;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface DevicesRepository extends JpaRepository<Devices, Long> {
    Optional<Devices> findDevicesByName(String name);
}
