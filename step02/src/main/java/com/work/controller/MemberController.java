package com.work.controller;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.work.dto.Member;
import com.work.service.MemberService;

@Controller
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
	public String join(Member dto, Model model) {
		System.out.println("회원가입요청");
		System.out.println(dto);
		
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
	
	
//	@RequestMapping("/getMemberList")
//	public String allMemberInfo(Model model) {
//		System.out.println("회원 전체 조회");
//		
//		ArrayList<Member> list = memberService.getMemberList();
//		for(int index = 0; index < list.size(); index++) {
//			System.out.println(list.get(index));
//			model.addAttribute("message", list);
//		}
//		model.addAttribute("MemberList", list);
//		return "result";
//	}
	
//	@RequestMapping("/getMemberInfo")
//	public String getMemberInfo(String memberId, Model model) {
//		System.out.println("회원 조회");
//		Member dto = memberService.getMember(memberId);
//		model.addAttribute("message", dto);
//		return "result";
//	}
	
//	@GetMapping("/member/size")
//	@ResponseBody
//	public int size() {
//		return memberService.getSize();
//	}
	
}
