package com.work.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.work.dao.MemberDao;

@Service
public class MemberService {
	
	@Autowired
	private MemberDao memberDao;

	/** 로그인 */
	public String login(String memberId, String memberPw) {
		String grade = memberDao.login(memberId, memberPw);
		System.out.println("dao grade : " + grade);
		return grade;
	}
}
