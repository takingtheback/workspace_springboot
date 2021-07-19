package com.work.interceptor;

import java.io.PrintWriter;
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

		boolean isLogin = (boolean)request.getAttribute("isLogin");
		log.debug("### needToLoginInterceptor isLogin : " + isLogin);
		
		if(isLogin) {
			// JavaScript 사용해서 경고 메세지 출력 후 로그인페이지 이동 요청 
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.append("<script>");
			out.append("alert('로그인시에 이용할 수 없는 서비스입니다.');");
			out.append("history.back();");
			out.append("</script>");
			
			return false; // 인증받지 않은 사용자 요청 거부(Controller 요청 수행 안함)
		}
		
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
