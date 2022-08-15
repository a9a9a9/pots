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

@Controller
public class BoardController {
	final static Logger logger = LoggerFactory.getLogger(BoardController.class);
 
	@Autowired IBoardService service;
	
	@RequestMapping(value = "writeProc")
	public String writeProc(MultipartHttpServletRequest multi) {
		service.writeProc(multi);
		return "forward:boardProc";
	}
	
	@RequestMapping(value = "boardProc")
	public String boardProc(Model model, @RequestParam(value="currentPage", required = false, defaultValue = "1")int currentPage,
			String search, String select, HttpServletRequest req ) {
		service.boardProc(model, currentPage, search, select, req);
		return "forward:/index?formpath=board";
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
}
