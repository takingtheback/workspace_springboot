package com.work.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.work.dto.Member;
import com.work.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class MemberController {

	@Autowired
	public MemberService memberService;
	
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
	
	
	@RequestMapping("/findMember")
	public String findMember() {
		return "findMember";	
	}
	
	@RequestMapping("/memberList")
	public String memberList() {
		return "memberList";	
	}
	
//	@RequestMapping("/login")
//	public String login(String memberId, String memberPw, Model model, HttpSession session) {
// // public String login(String memberId, String memberPw, Model model, HttpServletRequest request) {
//		// HttpSession session = request.getSession();
//		log.debug("### " + session.isNew() + ", " + session.getCreationTime());
//		
//		log.info("### 로그인요청");
//		log.debug("### " + memberId + ", " + memberPw);
//		
//		String grade = memberService.login(memberId,memberPw);
//		
//		if(grade != null) {
//			// 사용자 인증처리
//			// session.invalidate(); // 혹시라도 기존세션에 있는 정보가 존재할 수 있으므로 기존세션객체 삭제
//			// 다시 새로운 세션객체 생성? => request.getSession();
//			// getAttributeNames(): java.util.Enumeration
//			session.setAttribute("memberId", memberId);
//			
//			
//			model.addAttribute("message","[로그인 사용자] " + memberId);
//		} else {
//			model.addAttribute("message","[로그인 실패] 로그인 정보를 다시 확인하시기 바랍니다.");
//		}
//		
//		return "result";
//	}
	
	@RequestMapping("/login")
	public String login(String memberId, String memberPw, Model model, HttpSession session) {
		log.debug("### " + session.isNew() + ", " + session.getCreationTime());
		
		log.info("### 로그인요청");
		log.debug("### " + memberId + ", " + memberPw);
		
		String grade = memberService.login(memberId,memberPw);
		//로그인 회원의 도메인 반환
		Member dto = memberService.loginToMember(memberId,memberPw);
		
		if(grade != null && dto != null) {
			
			session.setAttribute("memberId", memberId);
			session.setAttribute("grade", grade);
			
			session.setAttribute("dto", dto);
			
			model.addAttribute("message","[로그인 사용자] " + memberId);
			return "main";
		} else {
			model.addAttribute("message","[로그인 실패] 로그인 정보를 다시 확인하시기 바랍니다.");
			return "result";
		}
	}
	
	
	@RequestMapping("/join")
	public String join(Member dto, Model model) {
//		System.out.println("회원가입요청"); 개발중에 디버그 정보 출력, 개발완료 후에는 삭제.. 
//		System.out.println(dto);
		log.info("### 회원가입요청");
		log.debug("### " + dto);
		
		int result = memberService.addMember(dto);
		if (result == 1) {
			// 회원가입 성공
			model.addAttribute("message", "[회원가입 성공] 로그인 후 서비스를 이용해주세요.");
			return "loginForm";
		} else {
			// 회원가입 실패
			model.addAttribute("message", "[회원가입 실패] 가입 정보를 확인해주세요.");
			return "result";
		}
		
	}
	
	@RequestMapping("/getMemberInfo")
	public String getMemberInfo(String memberId, Model model) {
		System.out.println("회원 조회");
		Member dto = memberService.getMember(memberId);
		model.addAttribute("dto", dto);
		return "findMember";
	}
	
	
	@RequestMapping("/getMemberList")
	public String getMemberList(Model model) {
		System.out.println("회원 전체 조회");
		
		List<Member> list = memberService.getMemberList();
		for(int index = 0; index < list.size(); index++) {
			System.out.println(list.get(index));
			model.addAttribute("message", list);
		}
		model.addAttribute("MemberList", list);
		return "memberList";
	}
	
}
