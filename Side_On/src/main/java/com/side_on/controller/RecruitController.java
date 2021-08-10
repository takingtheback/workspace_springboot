package com.side_on.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RecruitController {
	
	/** 모집 페이지 첫 화면 */
	@RequestMapping("/recruit/recruitHome")
	public String recruitHome() {
		
		return "recruit/recruitHome"; 
	}
	
	/** 모집 페이지 상세 페이지 */
	@RequestMapping("/recruit/recruitDetail")
	public String recruitDetail() {
		
		return "recruit/recruitDetail"; 
	}
	
	/** 모집 페이지 글 쓰기 */
	@RequestMapping("/recruit/recruitWrite")
	public String recruitWrite() {
		
		return "recruit/recruitWrite"; 
	}
	
	/** 마이페이지 모집현황 보기 */
	@RequestMapping("/recruit/recruitMypage")
	public String recruitMypage() {
		
		return "recruit/recruitMypage"; 
	}
	
	/** 마이페이지 지원현황 보기 */
	@RequestMapping("/recruit/recruitMypage2")
	public String recruitMypage2() {
		
		return "recruit/recruitMypage2"; 
	}
}

