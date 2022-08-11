package com.proj.pots.board;

import javax.servlet.http.HttpServletRequest;
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
	
	@RequestMapping(value = "/communityBoardView")
	public String view() {
		String url = checkSession("board/communityBoardView");
		return url;
	}
	@RequestMapping(value = "/boardWrite")
	public String write() {
		String url = checkSession("board/boardWrite");
		return url;
	}

	@RequestMapping(value = "modifyForm")
	public String modify(Model model, BoardDTO board) { 
		String url = checkSession("board/modifyForm");
		model.addAttribute("board", board); //modifyForm.jsp에서 출력할 데이터
		return url;
	}

	@RequestMapping(value = "communityboarddelete")
	public String delete(Model model, String proc, HttpServletRequest req) {
		String url = checkSession("board/communityboarddelete");
		System.out.println("delete proc : " + proc);
		if(proc == null) {
			return "forward:boardProc";
		}
		
		if(proc.equals("deleteProc")) {
			model.addAttribute("no", req.getParameter("no"));
		}else {
			model.addAttribute("checks", req.getParameterValues("checks"));
		}
		
		model.addAttribute("proc", proc);
		return url;
	}

}
