package com.kodgemisi.security;

import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@EnableWebSecurity
public class WebSecurity extends WebSecurityConfigurerAdapter{
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
		.authorizeRequests()                               
        .antMatchers("/resources/**", "/static/**","/webjars/**").permitAll()
		.antMatchers("/resources/**","/","/detail/**","/form/**").permitAll()    
		.antMatchers("/admin/**").hasRole("manager")
        .anyRequest().authenticated()                                             
        .and().formLogin().defaultSuccessUrl("/admin/addList", true);
        


	}
	
}
