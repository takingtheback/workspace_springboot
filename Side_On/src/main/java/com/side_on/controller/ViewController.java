package com.side_on.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ViewController {

	@RequestMapping("/find/list")
	public String FindMemberList() {
		return "find/list";
	}
	
	@RequestMapping("/find/form")
	public String FindMemberForm() {
		return "find/form";
	}
	
	@RequestMapping("/find/detail")
	public String FindMemberDetail() {
		return "find/detail";
	}
}
