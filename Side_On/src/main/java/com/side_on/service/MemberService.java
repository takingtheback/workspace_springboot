package com.side_on.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.side_on.dao.MemberDao;
import com.side_on.dto.Member;
import com.side_on.util.Utility;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MemberService {
	
	@Autowired
	private MemberDao memberDao;
	
	/**
	 * login 
	 * @param memberId 아이디
	 * @param memberPw 비밀번호
	 * @return grade
	 */
	public String login(String memberId, String memberPw) {
		String grade = memberDao.login(memberId, memberPw);
		log.debug("member grade :: " + grade);
		return grade;
	}
	
	/**
	 * login
	 * @param memberId 아이디
	 * @param memberPw 비밀번호
	 * @return member domain
	 */
	public Member loginToMember(String memberId, String memberPw) {
		Member dto = memberDao.loginToMember(memberId, memberPw);
		log.debug("loginToMember :: " + dto);
		return dto;
	}
	
	/**
	 * delete account
	 * @param memberId 아이디
	 * @param memberPw 비밀번호
	 * @return T/F
	 */
	public boolean deleteMember(String memberId, String memberPw) {
		if(memberId != null && memberPw != null) {			
			memberDao.deleteMember(memberId, memberPw); 
		} else {
			log.debug("deleteMember Fail :: memberService");
			return false;
		}
		return true;
	}
	
}
