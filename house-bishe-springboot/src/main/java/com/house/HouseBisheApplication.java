package com.house;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = "com.house.mapper")
public class HouseBisheApplication {

    public static void main(String[] args) {
        SpringApplication.run(HouseBisheApplication.class, args);
    }

}
