package com.work.controller;

import java.util.ArrayList;
import java.util.Enumeration;
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
		return "main"; 
	}
	
	@RequestMapping("/member/joinForm")
	public String joinForm(Model model, HttpSession session) {
		return "member/joinForm";
	}
	
	@RequestMapping("/member/loginForm")
	public String loginForm() {
		return "member/loginForm";
	}
	
	@RequestMapping("/member/join")
	public String join(Member dto, Model model) {
		int result = memberService.addMember(dto);
		if (result == 1) {
			model.addAttribute("message", "[회원가입성공] 로그인 후 서비스 이용하세요");
			return "member/loginForm";
		} else {
			model.addAttribute("message", "[회원가입실패] 가입 정보를 다시 확인하시기 바랍니다.");
			return "result";
		}
	}

	@RequestMapping("/member/login")
	public String login(String memberId, String memberPw, Model model, HttpSession session) {
		String grade = memberService.login(memberId, memberPw);
		Member dto = memberService.loginToMember(memberId, memberPw);
		
		if (grade != null && dto != null) {
			session.setAttribute("memberId", memberId); 
			session.setAttribute("grade", grade); 
			session.setAttribute("dto", dto); 
			return "main";	
		} else {
			model.addAttribute("message", "[로그인 실패] 로그인 정보를 다시 확인하시기 바랍니다.");
			return "result";
		}
	}
	
	@RequestMapping("/admin/memberList")
	public String memberList(Model model, HttpSession session) {
		List<Member> list = memberService.memberList();
		model.addAttribute("list", list);
		return "admin/memberList";
	}
	
	@RequestMapping("/admin/memberDetail")
	public String memberDetail(String memberId, Model model) {
		Member dto = memberService.memberDetail(memberId);
		model.addAttribute("dto", dto);
		return "admin/memberDetail";
	}
	
	@RequestMapping("/member/logout")
	public String logout(HttpSession session) {
		Enumeration<String> attributes = session.getAttributeNames();
		while (attributes.hasMoreElements()) {
			String attribute = attributes.nextElement();
			session.removeAttribute(attribute);
		}
		session.invalidate();
		return "main";
	}
	
	@RequestMapping("/admin/multipleCondition")
	public String multipleCondition(String condition, String keyword, Model model) {
		List<Member> list = null;
		
		if(condition.equals("memberId") && keyword.contains(",")) { 
			String[] memberIdArray = keyword.split(","); 
			
			List<String> memberIdList = new ArrayList<String>();	
			for (String memberId : memberIdArray) {
				memberIdList.add(memberId.trim());
			}
			
			list = memberService.memberListByConditionToList(condition, memberIdList);
		} else {
			list = memberService.memberListByCondition(condition, keyword);
		}
		if (list.isEmpty()) {
			model.addAttribute("message", "검색 조건에 해당하는 데이터가 없습니다.");
		}
		model.addAttribute("list", list);
		return "admin/memberList";
	}
}
