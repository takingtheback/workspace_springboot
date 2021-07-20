package com.work.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.work.service.BoardService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class BoardController {

	@Autowired
	public BoardService boardService;
	
	@RequestMapping("/board/freeBoard")
	public String freeBoard() {
		return "board/freeBoard"; 
	}
	
	@RequestMapping("/board/write")
	public String write() {
		return "board/write"; 
	}
}
