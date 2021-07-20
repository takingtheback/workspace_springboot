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

	/** 로그인 : 등급 반환 */
	public String login(String memberId, String memberPw) {
		String grade = memberDao.login(memberId, memberPw);
		System.out.println("dao grade: " + grade);
		return grade;
	}

	/** 로그인 : 도메인 반환 */
	public Member loginToMember(String memberId, String memberPw) {
		Member dto = memberDao.loginToMember(memberId, memberPw);
		log.debug("### loginToMember : " + dto);
		return dto;
	}
	
	/** 회원가입 */
	public int addMember(Member dto) {
		dto.setEntryDate(Utility.getCurrentDate());
		dto.setGrade("G");
		dto.setMileage(1000);
		int result = memberDao.insertMember(dto);
		//System.out.println("dao result: " + result);
		log.debug("dao result: " + result);
		return result;
	}

	/** 회원 전체조회 */
	public List<Member> memberList() {
		return memberDao.selectMemberList();
	}

	/** 회원 상세조회 */
	public Member memberDetail(String memberId) {
		return memberDao.selectMember(memberId);
	}

	/** 다중조건 조회 */
	public List<Member> memberListByCondition(String condition, String keyword) {
		return memberDao.selectMemberListByCondition(condition, keyword);
	}


	/** 다중조건 조회 : 다중 아이디 조회 ArrayList */
	public List<Member> memberListByConditionToList(String condition, List<String> memberIdList) {
		return memberDao.selectMemberListByConditionToList(condition, memberIdList);
	}
	
}



