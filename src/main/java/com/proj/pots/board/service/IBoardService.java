package com.proj.pots.board.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;


public interface IBoardService {

	void writeProc(MultipartHttpServletRequest multi);

	void boardProc(Model model, int currentPage, String search, String select, HttpServletRequest req);

	void viewProc(int square_num, Model model);

	void upNum(int square_num);


}
