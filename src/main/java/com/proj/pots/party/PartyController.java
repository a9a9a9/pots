package com.proj.pots.party;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PartyController { 

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
		public String partyCommentList() {
			return "partyAdmin/partyCommentList";
		}
		
		@RequestMapping(value = "/partyCreate")
		public String partyCreate() {
			return "partyAdmin/partyCreate";
		}
		
		@RequestMapping(value = "/partyJoinList")
		public String partyJoinList() {
			return "partyAdmin/partyJoinList";
		}
		
		@RequestMapping(value = "/partyList")
		public String partyList() {
			return "partyAdmin/partyList";
		}
		
		@RequestMapping(value = "/partyCancel")
		public String partyCancel() {
			return "partyAdmin/partyCancel";
		}
		
		@RequestMapping(value = "/partyCancelReq")
		public String partyCancelReq() {
			return "partyAdmin/partyCancelReq";
		}
		
		@RequestMapping(value = "/partyCancelList")
		public String partyCancelList() {
			return "partyAdmin/partyCancelList";
		}
}
