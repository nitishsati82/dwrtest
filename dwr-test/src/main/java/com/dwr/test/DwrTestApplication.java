package com.dwr.test;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ImportResource;

@SpringBootApplication
@ImportResource("classpath*:spring.xml")
public class DwrTestApplication {

	public static void main(String[] args) {
		SpringApplication.run(DwrTestApplication.class, args);
	}

}
