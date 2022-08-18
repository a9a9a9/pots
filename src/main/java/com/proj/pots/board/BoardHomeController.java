package com.proj.pots.board;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.proj.pots.member.dto.BoardDTO;


@Controller
public class BoardHomeController {
	@Autowired HttpSession session;
	public String checkSession(String url) {
		String id = (String)session.getAttribute("id");
		if(id == null)
			return "member/login";
		return url;
	}
	@RequestMapping(value = "/view")
	public String view() {
		String url = checkSession("board/communityBoardView");
		return url;
	}
	@RequestMapping(value = "/boardWrite")
	public String write() {
		String url = checkSession("board/boardWrite");
		return url;
	}

	@RequestMapping(value = "modify")
	public String modify(Model model, BoardDTO board) { 
		String url = checkSession("board/boardModify");
		model.addAttribute("board", board); //modifyForm.jsp에서 출력할 데이터
		return url;
	}

	@RequestMapping(value = "delete")
	public String delete(Model model, BoardDTO board) {
		String url = checkSession("board/boardDelete");
		model.addAttribute("board", board);
		return url;
	}

}
