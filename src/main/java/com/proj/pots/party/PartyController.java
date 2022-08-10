package com.proj.pots.party;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.proj.pots.party.dto.PartyCommentDTO;
import com.proj.pots.party.service.IPartyViewService;

@Controller
public class PartyController { 
	
	@Autowired IPartyViewService service;

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
		public String partyCommentList(Model model, String page) {
			
			ArrayList<PartyCommentDTO> list =service.comment();
			model.addAttribute("list", list);
			
			return "partyAdmin/partyCommentList";
		}
		
		@RequestMapping(value = "/partyCreate")
		public String partyCreate() {
			return "partyAdmin/partyCreate";
		}
		
		
}
