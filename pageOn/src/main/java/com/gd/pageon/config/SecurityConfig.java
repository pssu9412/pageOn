package com.gd.pageon.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
public class SecurityConfig {
	
	@Bean
    BCryptPasswordEncoder bcrpytPwdEncoder() {
      return new BCryptPasswordEncoder();
      // 부트에선 public 사용 지양함 (자바방식 빈등록)
    }

}
