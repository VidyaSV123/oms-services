package com.oms.productcontroller;

import org.springframework.boot.SpringApplication;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ImportResource;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@ImportResource({"META-INF/rr/**/*.xml"})
@EntityScan(basePackages = { "com.oms.entity" })
public class ProductControllerApp {
    public static void main(String[] args)
    {
      SpringApplication.run(ProductControllerApp.class, args);
    }
}