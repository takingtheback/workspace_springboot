package com.work.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {
	
	// DI 인터셉터 객체 : 다중의 인스턴스인 경우에는 Qualufier 사용하여 해당 instance 지정
	@Autowired
	@Qualifier("beforeActionInterceptor")
	HandlerInterceptor beforeActionInterceptor;
	
	@Autowired
	@Qualifier("needToAdminInterceptor")
	HandlerInterceptor needToAdminInterceptor;
	
	@Autowired
	@Qualifier("needToLoginInterceptor")
	HandlerInterceptor needToLoginInterceptor;
	
	@Autowired
	@Qualifier("needTologoutInterceptor")
	HandlerInterceptor needTologoutInterceptor;

	// 인터셉터 클래스와 자원 및 요청에 대한 인터셉터 연결 추가 설정
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		// 1. beforeActionInterceptor : 사용자인증, 관리자권한 정보 설정위한 인터셉터
		registry.addInterceptor(beforeActionInterceptor)
		.addPathPatterns("/**")
		.excludePathPatterns("/css/**")
		.excludePathPatterns("/img/**") 
		.excludePathPatterns("/js/**")
		; 
		
		// 2. needToLoginInterceptor : 로그인 체킹 인터셉터
		registry.addInterceptor(needToLoginInterceptor)
		.addPathPatterns("/**")
		.excludePathPatterns("/css/**")
		.excludePathPatterns("/img/**") 
		.excludePathPatterns("/js/**")
		.excludePathPatterns("/")
		.excludePathPatterns("/main")
		.excludePathPatterns("/loginForm")
		.excludePathPatterns("/login")
		.excludePathPatterns("/joinForm")
		.excludePathPatterns("/join")
		; 
		
		// 3. needTologoutInterceptor : 로그인상태에서는 사용해서는 안됨
		registry.addInterceptor(needTologoutInterceptor)
		.addPathPatterns("/loginForm")
		.addPathPatterns("/login")
		.addPathPatterns("/joinForm")
		.addPathPatterns("/join")
		;
		
		// 4. needToAdminInterceptor
		registry.addInterceptor(needToAdminInterceptor)
		.addPathPatterns("/getMemberInfo")
		.addPathPatterns("/getMemberList")
		;
		
		
		WebMvcConfigurer.super.addInterceptors(registry);
	}
	
	
}
