package com.proj.pots.board.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;
 
import com.proj.pots.board.dao.IBoardDAO;
import com.proj.pots.member.dto.BoardDTO;


@Service 
public class BoardServiceImpl implements IBoardService {
	@Autowired IBoardDAO mapper;
	@Autowired HttpSession session;
	
	
	@Override
	public void writeProc(MultipartHttpServletRequest req) {
		String id = (String)session.getAttribute("id");
		String nick = (String)session.getAttribute("nick");
		String title = req.getParameter("square_title");
		String content= req.getParameter("square_content");
		
		BoardDTO board = new BoardDTO();
		board.setId(id);		
		board.setNick(nick);
		board.setSquare_title(title); 
		board.setSquare_content(content);		
		board.setSquare_view(0);
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("MM-dd hh:mm");
		String dateConvert = sdf.format(date);
		
		board.setSquare_date(dateConvert);
		mapper.writeProc(board);
}

	@Override
	public void boardProc(Model model, int currentPage, String search, String select, HttpServletRequest req) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("search", search);
		map.put("select", select);
		
		int totalCount = mapper.boardCount(map); 
		int pageBlock = 5;
		int end = currentPage * pageBlock;
		int begin = end+1 - pageBlock;
		
		ArrayList<BoardDTO> boardList = mapper.boardProc(begin, end, select, search);
		
		model.addAttribute("boardList", boardList);

		String url = req.getContextPath() + "/boardProc?";
		if(select != null) { 
			url+="select="+select+"&";
			url+="search="+search+"&";	
		}
		url+="currentPage=";
		model.addAttribute("page", PageService.getNavi(currentPage, pageBlock, totalCount, url)); 
		
	}

	@Override
	public void viewProc(int square_num, Model model) {
//		BoardDTO board = mapper.viewProc(square_num);
//		model.addAttribute("board", board);
		model.addAttribute("board",mapper.viewProc(square_num));
	}

	@Override
	public void upNum(int square_num) {
		mapper.upNum(square_num);
		 
	}
}
