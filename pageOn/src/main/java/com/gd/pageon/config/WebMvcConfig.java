package com.gd.pageon.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {

		// <resources mapping="/upload/**" location="file:///upload/" />
		registry.addResourceHandler("/upload/**")
				.addResourceLocations("file:///upload/");

	}
}
