package com.creative.solutions;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.data.jpa.JpaRepositoriesAutoConfiguration;

@SpringBootApplication(exclude = {JpaRepositoriesAutoConfiguration.class})
public class SolutionsApplication {

	public static void main(String[] args) {
		SpringApplication.run(SolutionsApplication.class, args);
	}

}
