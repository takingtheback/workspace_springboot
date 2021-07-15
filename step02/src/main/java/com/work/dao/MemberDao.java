package com.work.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.work.dto.Member;

@Mapper
public interface MemberDao {

	/** 로그인 */
	public String login(String memberId, String memberPw);
	
	/** 전체회원 조회 */
	public List<Member> selectMemberList();
	
	/** 회원상세조회 */
	public Member selectMember(String memberId);
	
	/** 회원가입 */
	public int insertMember(Member dto);

}
