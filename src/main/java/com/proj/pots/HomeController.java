package com.proj.pots;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/")
	public String index(Model model) {
		model.addAttribute("formpath", "home");
		System.out.println("실행");
		return "index";
	}
	
	@RequestMapping(value = "/login")
	public String login() {
		return "member/login";
	}
	
	@RequestMapping(value = "/findMy")
	public String fingMy() {
		return "member/findMy";
	}
	@RequestMapping(value = "/registerAgree")
	public String registerAgree() {
		return "member/registerAgree";
	}
	
	@RequestMapping(value = "/eventMain")
	public String eventMain() {
		return "event/eventMain";
	}
	@RequestMapping(value = "/eventWin")
	public String eventWin() {
		return "event/eventWin";
	}
	@RequestMapping(value = "/eventEnd")
	public String eventEnd() {
		return "event/eventEnd";
	}
	
	//common 폴더 파일
	@RequestMapping(value = "/header")
	public String header() {
		return "common/header";
	}
	
	@RequestMapping(value = "/footer")
	public String footer() {
		return "common/footer";
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
