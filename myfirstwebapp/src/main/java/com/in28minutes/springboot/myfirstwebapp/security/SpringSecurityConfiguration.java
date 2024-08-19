package com.in28minutes.springboot.myfirstwebapp.security;

import java.util.function.Function;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configurers.HeadersConfigurer.FrameOptionsConfig;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
public class SpringSecurityConfiguration {
	
	@Bean
	public InMemoryUserDetailsManager createUserDetailsManager() {	
		
		UserDetails userDetails1 = createNewUser("in28minutes", "dummy");
		UserDetails userDetails2 = createNewUser("Ranga", "dummydummy");
		
		return new InMemoryUserDetailsManager(userDetails1, userDetails2);
	}

	private UserDetails createNewUser(String username, String password) {
		Function<String, String> passwordEncoder
		= input -> passwordEncoder().encode(input);
		
		UserDetails userdetails = User.builder()
		.passwordEncoder(passwordEncoder).username(username).password(password).roles("USER", "ADMIN").build();
		return userdetails;
	}
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();		
	}
	
	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
	  http
	      .csrf(csrf -> csrf
	          .ignoringRequestMatchers("/h2-console/**")
	      .disable()
		  )
		  .authorizeHttpRequests(auth -> auth
				  .requestMatchers("/h2-console/**").permitAll()
	      )
		  .headers(headers -> headers.frameOptions(FrameOptionsConfig::disable));
	  return http.build();
	}
	
}
