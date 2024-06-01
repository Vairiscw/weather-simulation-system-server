package com.example.wssserver;

import com.example.wssserver.components.TempRepository;
import com.example.wssserver.components.Temperature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.core.env.Environment;

import java.util.List;

@SpringBootApplication
public class WssServerApplication {

    public static void main(String[] args) {
        SpringApplication.run(WssServerApplication.class, args);
    }
}
