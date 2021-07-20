package com.work.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.work.dto.Board;

@Mapper
public interface BoardDao {
	
	/** 게시판 전체조회 */
	public List<Board> selectFreeBoardList();
	
	/** 게시글 세부조회 */
	public Board selectfreeBoardDetail(String title);

}
