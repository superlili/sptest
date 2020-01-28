package com.zhouli.spatialcrowdsourcing.scshow;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Component;

@SpringBootApplication
@ServletComponentScan(basePackages = "com.zhouli.spatialcrowdsourcing.scshow.controller")
@MapperScan(basePackages = "com.zhouli.spatialcrowdsourcing.scshow.dao")
public class ScshowApplication {

    public static void main(String[] args) {
        SpringApplication.run(ScshowApplication.class, args);
    }

}

