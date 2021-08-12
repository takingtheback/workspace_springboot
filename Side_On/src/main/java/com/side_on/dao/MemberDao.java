package com.side_on.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.side_on.dto.Member;

@Mapper
public interface MemberDao {
	
	/** login : return grade */
	public String login(String memberId, String memberPw);
	
	/** login : return domain */
	public Member loginToMember(String memberId, String memberPw);

	/** select all member */
	public List<Member> selectMemberList();
	
	/** select one member */
	public Member selectMember(String memberId);
	
	/** 회원탈퇴 */
	public void deleteMember(String memberId, String memberPw);

	public int insertMember(Member dto);

}
