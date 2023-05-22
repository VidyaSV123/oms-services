package com.oms.inventorycontroller;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ImportResource;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@ImportResource({"META-INF/rr/**/*.xml"})
@EntityScan(basePackages = { "com.oms.entity" })

public class InventoryControllerApp {
    public static void main(String[] args)
    {
      SpringApplication.run(InventoryControllerApp.class, args);
    }
}