package com.work.interceptor;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@Component("needToAdminInterceptor")
@Slf4j
public class NeedToAdminInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		boolean isAdmin = (boolean)request.getAttribute("isLogin");
		log.debug("### needToAdminInterceptor isAdmin : " + isAdmin);
		
		if(!isAdmin) {
			// JavaScript 사용해서 경고 메세지 출력 후 로그인페이지 이동 요청 
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.append("<script>");
			out.append("alert('관리자권한 획득 후 이용하시기 바랍니다.');");
			out.append("location.replace('/main');");
			out.append("history.back();"); // 해당서비스 요청전 페이지로 back 처리
			out.append("</script>");
			
			// 로그인페이지 이동 요청
			// response.sendRedirect("/loginForm");
			
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
