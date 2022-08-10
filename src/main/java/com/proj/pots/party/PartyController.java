package com.proj.pots.party;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.proj.pots.party.dto.PageVO;
import com.proj.pots.party.dto.PartyCommentDTO;
import com.proj.pots.party.service.IPartyViewService;

@Controller
public class PartyController { 
	
	@Autowired IPartyViewService service;
	@Autowired HttpSession session;

	//partyAdmin 폴더 파일
		@RequestMapping(value = "/partyIndex")
		public String partyIndex() {
			return "partyAdmin/partyIndex";
		}
		
		@RequestMapping(value = "/partyMyInfo")
		public String partyMyInfo() {
			return "partyAdmin/partyMyInfo";
		}
		
		@RequestMapping(value = "/partyBill")
		public String partyBill() {
			return "partyAdmin/partyBill";
		}
		
		@RequestMapping(value = "/partyCommentList")
		public String partyCommentList(Model model,String nowPage, PageVO vo) {
			//String id = (String)session.getAttribute("id");
			String id = "admin";
			ArrayList<PartyCommentDTO> list =service.comment(id);
			int total = list.size();			
			int cntPerPage = 2;
			
			if (nowPage == null) {
				nowPage = "1";
			}else {
				int nowInt = Integer.parseInt(nowPage);
				if(nowInt < 1)
					nowPage = "1";
			}
		
			vo = new PageVO(total, Integer.parseInt(nowPage), cntPerPage);
			model.addAttribute("paging", vo);
			model.addAttribute("list", list);
			
			return "partyAdmin/partyCommentList";
		}
		
		@RequestMapping(value = "/partyCreate")
		public String partyCreate() {
			return "partyAdmin/partyCreate";
		}
		
		
}
