package com.proj.pots.board.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.proj.pots.member.dto.BoardDTO;
import com.proj.pots.member.dto.CommentDTO;


public interface IBoardService {

	void writeProc(MultipartHttpServletRequest multi);
	
	void noticeWriteProc(MultipartHttpServletRequest multi);

	void boardProc(Model model, int currentPage, String search, String select, HttpServletRequest req);
	
	void noticeProc(Model model, int currentPage, String search, String select, HttpServletRequest req);

	void viewProc(int square_num, Model model);
	
	void noticeViewProc(int notice_num, Model model);

	void upNum(int square_num);
	
	void noticeUpNum(int notice_num);

	boolean modifyProc(BoardDTO board);

	boolean deleteProc(BoardDTO board, String pw);

	void commentProc(CommentDTO com);

	boolean commentDelete(int comment_num);
}
