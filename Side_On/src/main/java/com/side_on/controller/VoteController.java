package com.side_on.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VoteController {
	
	@RequestMapping("/vote/makePoll")
	public String makePoll() {
	
		return "vote/makePoll";
	}
	
	@RequestMapping("/vote/voteHome")
	public String voteHome() {
	
		return "vote/voteHome";
	}
	
	@RequestMapping("/vote/readSurvey_off")
	public String readSurvey_off() {
	
		return "vote/readSurvey_off";
	}
	
	@RequestMapping("/vote/readSurvey_on")
	public String readSurvey_on() {
	
		return "vote/readSurvey_on";
	}
}
