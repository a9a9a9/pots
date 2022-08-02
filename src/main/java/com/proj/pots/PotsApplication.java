package com.proj.pots;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;

@SpringBootApplication(exclude = SecurityAutoConfiguration.class)
public class PotsApplication {

	public static void main(String[] args) {
		SpringApplication.run(PotsApplication.class, args);
	}
}
