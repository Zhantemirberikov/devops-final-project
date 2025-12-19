package com.zhantemir.devopsapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
public class DevopsappApplication {

    public static void main(String[] args) {
        SpringApplication.run(DevopsappApplication.class, args);
    }

    @RestController
    public static class HealthController {

        @GetMapping("/")
        public String home() {
            return "Application is UP and running!";
        }

        @GetMapping("/hello")
        public String hello() {
            return "Hello from Kubernetes deployment!";
        }
    }
}
