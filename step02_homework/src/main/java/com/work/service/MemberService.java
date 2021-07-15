package com.work.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.work.dao.MemberDao;
import com.work.dto.Member;
import com.work.util.Utility;

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
	
	
	/** 회원가입 */
	public int addMember(Member dto) {
		
		dto.setEntryDate(Utility.getCurrentDate());
		dto.setGrade("G");
		dto.setMileage(1000);
		int result = memberDao.insertMember(dto);
		System.out.println("dto result : " + result);
		return result;
		
	}


	public Member getMember(String memberId) {
		return memberDao.selectMember(memberId);
	}


	public List<Member> getMemberList() {
		
		return memberDao.selectMemberList();
	}
	
}
