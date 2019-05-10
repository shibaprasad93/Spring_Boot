package com.user.reg.properties;

import java.util.HashMap;
import java.util.Map;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Configuration;

import lombok.Data;

@Configuration
@EnableConfigurationProperties
@ConfigurationProperties(prefix = "book")
@Data
public class ApplicationProperties {
	public Map<String, String> bookprops = new HashMap<>();

	public Map<String, String> getBookprops() {
		return bookprops;
	}

	public void setSsaprops(Map<String, String> bookprops) {
		this.bookprops = bookprops;
	}
}
