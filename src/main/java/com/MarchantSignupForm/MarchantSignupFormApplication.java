package com.MarchantSignupForm;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = "com.MarchantSignupForm")
public class MarchantSignupFormApplication {

	public static void main(String[] args) {
		SpringApplication.run(MarchantSignupFormApplication.class, args);
	}

}
