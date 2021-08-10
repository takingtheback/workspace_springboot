package com.side_on.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.side_on.dto.Notice;
import com.side_on.service.NoticeService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class NoticeController {

	@Autowired
	public NoticeService noticeService;
	
	@RequestMapping("/notice/noticeList")
	public String noticeList(Model model) {
		List<Notice> noticeList = noticeService.noticeList(); 
		model.addAttribute("noticeList", noticeList);
		return "notice/noticeList";
	}
	
	@RequestMapping("/notice/noticeDetail")
	public String noticeDetail(String noticeNo, Model model) {
		Notice dto = noticeService.noticeDetail(noticeNo);
		model.addAttribute("dto",dto);
		return "notice/noticeDetail";
	}
	
	@RequestMapping("/notice/noticeForm")
	public String noticeForm() {
		log.debug("공지사항 작성 폼......");
		return "notice/noticeForm";
	}
	
}
