package com.work.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.work.dto.Criteria;
import com.work.dto.PageMaker;
import com.work.dto.QnABoard;
import com.work.service.BoardService;

import lombok.extern.slf4j.Slf4j;


@Controller
@Slf4j
public class BoardController {

	@Autowired
	public BoardService boardService;
	
//	@RequestMapping("/board/QnACondition")
//	public String QnACondition(String condition, String keyword, Model model) {
//			
//		List<QnABoard> list = boardService.QnAListByCondition(condition, keyword);
//		
//		if (list.isEmpty()) {
//			model.addAttribute("message", "검색 조건에 해당하는 데이터가 없습니다.");
//		}
//		model.addAttribute("list", list);
//				       
//		return "/board/QnABoard";
//	}
	
	
	@RequestMapping("/board/DeleteResult")
	public String DeleteResult() {
	
		return "board/DeleteResult";
	}
	
	
	@RequestMapping("/board/QnABoardDelete")
	public String QnABoardDelete(int qnaBoardNo, Model model) {
		log.debug("### QnABoardDelete");
		int result = boardService.QnABoardDelete(qnaBoardNo);
		if (result == 1) {
			return "board/DeleteResult";
		} else {
			model.addAttribute("message", "[문의글 수정 실패] 작성 정보를 다시 확인하시기 바랍니다.");
			return "result";
		}
	}
		
	
	@RequestMapping("/board/QnABoardUpdate")
	public String QnABoardUpdate(int qnaBoardNo, Model model) {
		log.debug("### QnABoardUpdate");
		QnABoard dto = boardService.QnABoardDetail(qnaBoardNo);
		model.addAttribute("dto", dto);
		return "board/QnABoardUpdate";
	}
	
	
	@RequestMapping("/board/QnAUpdate")
	public String QnAUpdate(QnABoard dto, Model model) {
		
			int result = boardService.updateQnABoard(dto);
			if (result == 1) {
				return "board/WriteResult";
			} else {
				model.addAttribute("message", "[문의글 수정 실패] 작성 정보를 다시 확인하시기 바랍니다.");
				return "result";
			}
		}
	

	/** 게시판 목록 페이지 접속(페이징 적용) */
    @GetMapping("/board/QnABoard")
    public void boardListGET(Model model, Criteria cri) {
        
        log.info("### boardListGET");
       
        model.addAttribute("list", boardService.getListPaging(cri));
       
        int total = boardService.getTotal(cri);
        
        PageMaker pageMake = new PageMaker(cri, total);
        
        model.addAttribute("pageMaker", pageMake);
        
    }    
	
	
	@RequestMapping("/board/QnAWrite")
	public String QnAWrite(QnABoard dto, Model model) {
		
			int result = boardService.addQnABoard(dto);
			if (result == 1) {
				return "board/WriteResult";
			} else {
				model.addAttribute("message", "[문의글작성 실패] 작성 정보를 다시 확인하시기 바랍니다.");
				return "result";
			}
		}
	
	
	
	@RequestMapping("/board/QnABoardWrite")
	public String QnABoardWrite() {
	
		return "board/QnABoardWrite";
	}
	
	@RequestMapping("/board/replyBoard")
	public String replyBoard() {
	
		return "board/replyBoard";
	}
	
	
	@RequestMapping("/board/Mypage")
	public String Mypage() {
	
		return "board/Mypage";
	}
	
	
	@RequestMapping("/board/FaQBoard")
	public String FaQBoard() {
	
		return "board/FaQBoard";
	}
	
	@RequestMapping("/board/contactEmail")
	public String contactEmail() {
	
		return "board/contactEmail";
	}
	
	@RequestMapping("/board/contactResult")
	public String contactResult() {
	
		return "board/contactResult";
	}
	
	@RequestMapping("/board/chat")
	public String chat() {
	
		return "board/chat";
	}
	
//	@RequestMapping("/board/QnABoard")
//	public String freeBoardList(Model model) {
//		log.debug("### QnABoardList");
//		List<QnABoard> list = boardService.QnABoardList();
//		model.addAttribute("list", list);
//		return "board/QnABoard";
//	}

	
	@RequestMapping("/board/QnABoardDetail")
	public String QnABoardDetail(int qnaBoardNo, Model model) {
		log.debug("### QnABoardDetail");
		QnABoard dto = boardService.QnABoardDetail(qnaBoardNo);
		model.addAttribute("dto", dto);
		return "board/QnABoardDetail";
	}
	
//	@RequestMapping("/admin/memberDetail")
//	public String memberDetail(String memberId, Model model) {
//		Member dto = memberService.memberDetail(memberId);
//		model.addAttribute("dto", dto);
//		return "admin/memberDetail";
//	}
}
