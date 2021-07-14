package com.work.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.work.dto.Member;

@Controller
public class MemberController {

	// 응답페이지 이동 : jsp
	// application.properties <- 변경 후에는 서버 재구동
	// spring.mvc.view.prefix=/WEB-INF/jsp/
	// spring.mvc.view.suffix=.jsp
	
	@RequestMapping("/main")
	public String main() {
		return "main";	// /WEB-INF/jsp/main.jsp
	}
	
	@RequestMapping("/joinForm")
	public String joinForm() {
		return "joinForm";	
	}
	
	@RequestMapping("/loginForm")
	public String loginForm() {
		return "loginForm";	
	}
	
//	@RequestMapping("/join")
//	public String join() {
//		System.out.println("회원가입요청");
//		return null;
//	}
	
//	@RequestMapping("/login")
//	public void login(HttpServletRequest request) {
//		System.out.println("로그인요청");
//		String memberId = request.getParameter("memberId"); // "memberId" 에 aa 등 이름이 다르면 null 뜸
//		String memberPw = request.getParameter("memberPw");
//		System.out.println(memberId + ", " + memberPw);
//		//return null;
//	}
	
	
	@RequestMapping("/login")
	public void login(String memberId, String memberPw) {
		System.out.println("로그인요청");
		System.out.println(memberId + ", " + memberPw);
//		return null;
	}
	
	@RequestMapping("/join")
	public String join(Member dto) {
		System.out.println("회원가입요청");
		System.out.println(dto);
		return null;
	}
	
//	@RequestMapping("/login")
//	public void login(Member dto) {
//		System.out.println("로그인요청");
//		System.out.println(dto.getMemberId() + ", " + dto.getMemberPw());
//		//return null;
//	}
	
	
//	// null 뜸
//	@RequestMapping("/login")
//	public void login(Map<String, Object> map) {
//		System.out.println("로그인요청");
//		System.out.println(map.get("memberId") + ", " + map.get("memberPw"));
//		//return null;
//	}
	
	
}
