package com.work.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.work.dao.MemberDao;
import com.work.dto.Member;
import com.work.util.Utility;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MemberService {
	
	@Autowired
	private MemberDao memberDao;

	/** 로그인 : 등급 반환*/
	public String login(String memberId, String memberPw) {
		String grade = memberDao.login(memberId, memberPw);
		log.debug("dao grade : " + grade);
		return grade;
	}
	
	
	/** 로그인 : 도메인 반환 */
	public Member loginToMember(String memberId, String memberPw) {
		Member dto = memberDao.loginToMember(memberId,memberPw);
		log.debug("### " + dto);
		return dto;
	}
	
	/** 회원가입 */
	public int addMember(Member dto) {
		
		dto.setEntryDate(Utility.getCurrentDate());
		dto.setGrade("G");
		dto.setMileage(1000);
		int result = memberDao.insertMember(dto);
		log.debug("dto result : " + result);
		return result;
		
	}


	/** 회원정보 조회 */
	public Member getMember(String memberId) {
		return memberDao.selectMember(memberId);
	}

	
	/** 전체회원 조회 */
	public List<Member> getMemberList() {
		
		return memberDao.selectMemberList();
	}



	public List<Member> memberListByCondition(String condition, String keyword) {
		return memberDao.selectMemberListByCondition(condition,keyword);
	}
	
	
	
}
