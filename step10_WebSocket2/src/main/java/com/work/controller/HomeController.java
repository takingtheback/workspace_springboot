package com.work.controller;


import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HomeController {
	@RequestMapping("/")
	public String home(HttpServletRequest request) {
		ServletContext application = request.getServletContext();
		String path = application.getContextPath();
		application.setAttribute("path", path);
		log.info("### context path: " + path);
		return "main";
	}
}
