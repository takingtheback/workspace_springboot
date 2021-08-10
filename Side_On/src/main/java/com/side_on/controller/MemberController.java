package com.side_on.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.side_on.dto.Member;
import com.side_on.dto.Notice;
import com.side_on.service.MemberService;
import com.side_on.service.NoticeService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class MemberController {

	@Autowired
	public NoticeService noticeService;
	
	@Autowired
	public MemberService memberService;
	
	@RequestMapping("/member/loginForm")
	public String loginForm() {
		log.debug("loginForm() Load :: ");
		return "member/loginForm";
	}
	
	@RequestMapping("/member/login")
	public String login(String memberId, String memberPw, HttpSession session) {
		log.debug("login user :: " + memberId + ", " + memberPw);

		String grade = memberService.login(memberId, memberPw);
		log.debug("login grade :: " + grade);

		Member dto = memberService.loginToMember(memberId, memberPw);		
		log.debug("dto :: " + dto);
		
		if(grade != null && dto != null) {
			session.setAttribute("memberId", memberId);
			session.setAttribute("grade", grade);
			session.setAttribute("dto", dto);
			if(grade.equals("A")) {
				log.debug("login admin Success :: ");
				return "admin/dashboard";
			} else {
				log.debug("login user Success :: ");
				return "main";
			}
		} else {
			log.debug("login Fail :: ");
			return "member/loginForm";
		}
	}

	@RequestMapping("/admin/dashboard")
	public String dashboard(Model model) {
		List<Notice> noticeList = noticeService.noticeList();
		model.addAttribute("noticeList", noticeList);
		return "admin/dashboard";
	}
	
	@RequestMapping("/member/deleteForm")
	public String deleteForm() {
		log.debug("deleteForm() Load :: ");
		return "member/deleteForm";
	}
	
	@RequestMapping("/member/deleteMember")
	public String deleteMember(String memberId, String memberPw) {
		log.debug("deleteMember Load :: ");
		log.debug(memberId + ", " + memberPw);
		boolean result = memberService.deleteMember(memberId, memberPw);
		if(result == true) {
			log.debug("deleteMember Success :: ");
			return "member/loginForm";
		} else {
			log.debug("deleteMember Fail :: ");
			return "member/deleteForm";
		}
	}
}
