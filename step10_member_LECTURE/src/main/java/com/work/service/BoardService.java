package com.work.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.work.dao.BoardDao;
import com.work.dto.Board;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class BoardService {

	@Autowired
	private BoardDao boardDao;


	/** 게시글 전체조회 */
	public List<Board> freeBoardList() {
		log.debug("### BoardService");
		return boardDao.selectFreeBoardList();
	}

	/** 게시글 상세조회 */
	public Board freeBoardDetail(String title) {
		return boardDao.selectfreeBoardDetail(title);
	}


//	/** 회원 상세조회 */
//	public Member memberDetail(String memberId) {
//		return memberDao.selectMember(memberId);
//	}


}
