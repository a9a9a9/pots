package com.proj.pots.board.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.proj.pots.board.service.IBoardService;
import com.proj.pots.member.dto.BoardDTO;
import com.proj.pots.member.dto.CommentDTO;

@Controller
public class BoardController {
	final static Logger logger = LoggerFactory.getLogger(BoardController.class);
 
	@Autowired IBoardService service;
	
	@RequestMapping(value = "writeProc")
	public String writeProc(MultipartHttpServletRequest multi) {
		service.writeProc(multi);
		return "forward:boardProc";
	}
	@RequestMapping(value = "noticeWriteProc")
	public String noticeWriteProc(MultipartHttpServletRequest multi) {
		service.noticeWriteProc(multi);
		return "forward:noticeProc";
	}
	@RequestMapping(value = "commentProc")
	public String commentProc(CommentDTO com, Model model) {
		service.commentProc(com);
		int writeNo = com.getSquare_num();
		return "redirect:viewProc?writeNo="+writeNo;
	}
	@RequestMapping(value = "boardProc")
	public String boardProc(Model model, @RequestParam(value="currentPage", required = false, defaultValue = "1")int currentPage,
			String search, String select, HttpServletRequest req ) {
		service.boardProc(model, currentPage, search, select, req);
		return "forward:/index?formpath=board";
	}
	@RequestMapping(value = "noticeProc")
	public String noticeProc(Model model, @RequestParam(value="currentPage", required = false, defaultValue = "1")int currentPage,
			String search, String select, HttpServletRequest req ) {
		service.noticeProc(model, currentPage, search, select, req);
		return "forward:/index?formpath=noticeBoard";
	}
	
	@RequestMapping(value = "viewProc")
	public String viewProc(@RequestParam(value = "writeNo", required = false) String writeNo, Model model) {
		if(writeNo == null || writeNo == "")
			return "forward:/index?formpath=board";
		
		int no = Integer.parseInt(writeNo);
		service.viewProc(no, model);
		service.upNum(no);
		return "forward:/index?formpath=view";
	}
	@RequestMapping(value = "noticeViewProc")
	public String noticeViewProc(@RequestParam(value = "writeNo", required = false) String writeNo, Model model) {
		if(writeNo == null || writeNo == "")
			return "forward:/index?formpath=noticeBoard";
		
		int no = Integer.parseInt(writeNo);
		service.noticeViewProc(no, model);
		service.noticeUpNum(no);
		return "forward:/index?formpath=noticeView";
	}
	
	@RequestMapping(value = "modifyProc")
	public String modifyProc(BoardDTO board, Model model) {
		boolean check = service.modifyProc(board);
		if(check == false) {
			return "forward:/index?formpath=modify";
		}
		model.addAttribute("msg","수정 완료");
		int writeNo = board.getSquare_num();
		return "forward:viewProc?writeNo="+writeNo;
	}
	
	@RequestMapping(value = "commentDelete")
	public String commentDelete(String cNum, String bNum) {
		int cNo = Integer.parseInt(cNum);
		service.commentDelete(cNo);
		
		return "forward:viewProc?writeNo="+bNum;
	}
	@RequestMapping(value = "deleteProc")
	public String deleteProc(BoardDTO board, String pw, Model model) {
		boolean check = service.deleteProc(board, pw);
		if(check == false) {
			model.addAttribute("board",board);
			return "forward:/index?formpath=delete";
		}
		model.addAttribute("msg","삭제 성공");
		return "forward:boardProc";
	}
}
