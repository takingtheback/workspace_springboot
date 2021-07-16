package com.work.interceptor;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.work.dto.Member;

import lombok.extern.slf4j.Slf4j;

@Component("needTologoutInterceptor")
@Slf4j
public class NeedTologoutInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		log.debug("### needTologoutInterceptor");
		
		// 세션객체 가져오기
		HttpSession session = request.getSession();
		Enumeration attributes = session.getAttributeNames();
		while(attributes.hasMoreElements()) {
			String attribute = (String) attributes.nextElement();
			log.debug("###" + attribute + ":" + session.getAttribute(attribute));
			session.removeAttribute(attribute);
		}
		session.invalidate(); 
		response.sendRedirect("/main");
		
		return HandlerInterceptor.super.preHandle(request, response, handler);
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
	}

}
