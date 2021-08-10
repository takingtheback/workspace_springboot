package com.side_on.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.side_on.dao.NoticeDao;
import com.side_on.dto.Notice;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class NoticeService {
	
	@Autowired
	private NoticeDao noticeDao;
	
	/**
	 * notice List
	 * @return 글 목록
	 */
	public List<Notice> noticeList() {
		List<Notice> noticeList = noticeDao.selectNoticeList();
		return noticeList;
	}
	
	/**
	 * notice detail
	 * @param noticeNo 글번호
	 * @return notice doamin
	 */
	public Notice noticeDetail(String noticeNo) {
		Notice dto = noticeDao.selectNotice(noticeNo);
		log.debug("No.dto NOTICE :: " + noticeNo + ", " + dto);
		return dto;
	}
}
