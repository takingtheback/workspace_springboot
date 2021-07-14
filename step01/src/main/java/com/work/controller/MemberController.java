package com.work.controller;



import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.work.dto.Member;
import com.work.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	public MemberService memberService;
	
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
	
	@RequestMapping("/findMember")
	public String findMember() {
		return "findMember";	
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
	public String login(String memberId, String memberPw, Model model) {
		System.out.println("로그인요청");
		System.out.println(memberId + ", " + memberPw);
		
		String grade = memberService.login(memberId,memberPw);
		System.out.println("login grade : " + grade);
		if(grade != null) {
			model.addAttribute("message","[로그인 사용자] " + memberId);
		} else {
			model.addAttribute("message","[로그인 실패] 로그인 정보를 다시 확인하시기 바랍니다.");
		}
		
		return "result";
	}
	
	
	@RequestMapping("/join")
	public String join(String memberId, String memberPw, String name, String mobile, String email, Model model) {
		System.out.println("회원가입요청");
		System.out.println(memberId + ", " + memberPw + ", " + name + ", " + mobile + ", " + email);
		
		int result = memberService.addMember(memberId,memberPw,name,mobile,email);
		if(result >= 1) {
			model.addAttribute("message","[회원가입 성공] " + memberId);
		} else {
			model.addAttribute("message","[회원가입 실패] 회원 정보를 다시 확인하시기 바랍니다.");
		}
		
		return "result";
	}
	
	
	@RequestMapping("/getMemberList")
	public String allMemberInfo(Model model) {
		System.out.println("회원 전체 조회");
		
		ArrayList<Member> list = memberService.getMemberList();
		for(int index = 0; index < list.size(); index++) {
			System.out.println(list.get(index));
			model.addAttribute("message", list);
		}
		model.addAttribute("MemberList", list);
		return "result";
	}
	
	@RequestMapping("/getMemberInfo")
	public String getMemberInfo(String memberId, Model model) {
		System.out.println("회원 조회");
		Member dto = memberService.getMember(memberId);
		model.addAttribute("message", dto);
		return "result";
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
	
//	@RequestMapping("/member/size")
//	@ResponseBody
//	public int size() {
//		return memberService.getSize();
//	}
	
	
//	@RequestMapping(value= "/member/size", method = RequestMethod.POST)
//	@ResponseBody
//	public int size() {
//		return memberService.getSize();
//	}
	
	
	// @PostMapping("/member/size")
	@GetMapping("/member/size")
	@ResponseBody
	public int size() {
		return memberService.getSize();
	}
	
	
	
}
