package com.side_on.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.side_on.dto.Notice;


@Mapper
public interface NoticeDao {

	public List<Notice> selectNoticeList();

	public Notice selectNotice(String noticeNo);
	
	
	
}
