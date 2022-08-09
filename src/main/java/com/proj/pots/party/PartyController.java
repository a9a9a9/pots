package com.proj.pots.party;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.proj.pots.party.dto.PartyCommentDTO;
import com.proj.pots.party.dto.PartyDTO;
import com.proj.pots.party.dto.PartyRegDTO;
import com.proj.pots.party.service.IPartyViewService;

@Controller
public class PartyController { 
	
	@Autowired IPartyViewService service;
	
	@RequestMapping(value = "/partyCommentTest")
	public String partyCommentTest(Model model) {	
		ArrayList<PartyCommentDTO> commentList = service.commentProc(model);
		model.addAttribute("commentList", commentList);
		
		ArrayList<PartyRegDTO> partyList =service.partyProc(model);
		model.addAttribute("partyList", partyList);
		return "partyAdmin/partyCommentTest";  
	} 

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
		public String partyCommentList(Model model) {
			ArrayList<PartyCommentDTO> commentList = service.commentProc(model);
			model.addAttribute("commentList", commentList);
			return "partyAdmin/partyCommentList";
		}
		
		@RequestMapping(value = "/partyCreate")
		public String partyCreate() {
			return "partyAdmin/partyCreate";
		}
		
		
}
