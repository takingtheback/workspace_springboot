package com.work.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.work.dto.Board;
import com.work.service.BoardService;

import lombok.extern.slf4j.Slf4j;


@Controller
@Slf4j
public class BoardController {

	@Autowired
	public BoardService boardService;
	
	@RequestMapping("/board/freeBoard")
	public String freeBoardList(Model model) {
		log.debug("### freeBoardList");
		List<Board> list = boardService.freeBoardList();
		model.addAttribute("list", list);
		return "board/freeBoard";
	}

	
	@RequestMapping("/board/freeBoardDetail")
	public String freeBoardDetail(String title, Model model) {
		log.debug("### freeBoardDetail");
		Board dto = boardService.freeBoardDetail(title);
		model.addAttribute("dto", dto);
		return "board/freeBoardDetail";
	}
	
//	@RequestMapping("/admin/memberDetail")
//	public String memberDetail(String memberId, Model model) {
//		Member dto = memberService.memberDetail(memberId);
//		model.addAttribute("dto", dto);
//		return "admin/memberDetail";
//	}
}
