package com.proj.pots;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/")
	public String index(Model model) {
		model.addAttribute("formpath", "home");
		return "index";
	}
	
	@RequestMapping(value = "index")
	public void index(String formpath, Model model) {
		model.addAttribute("formpath", formpath);
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
		return "board/eventMain";
	}
	@RequestMapping(value = "/eventWin")
	public String eventWin() {
		return "board/eventWin";
	}
	@RequestMapping(value = "/eventEnd")
	public String eventEnd() {
		return "board/eventEnd";
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
	
	// 찬우
	@RequestMapping(value = "memberInfo")
	public String memberInfo() {
		return "member/memberInfo";
	}
	
	@RequestMapping(value = "update")
	public String update() {
		return "member/update";
	}
	
	@RequestMapping(value = "pwConfirm")
	public String pwConfirm() {
		return "member/pwConfirm";
	}
	@RequestMapping(value = "register")
	public String register() {
		return "member/register";
	}
	
	@RequestMapping(value = "faq1")
	public String faq1() {
		return "myMenu/faq1";
	}
	@RequestMapping(value = "faq2")
	public String faq2() {
		return "myMenu/faq2";
	}
	@RequestMapping(value = "faq3")
	public String faq3() {
		return "myMenu/faq3";
	}
	@RequestMapping(value = "faq4")
	public String faq4() {
		return "myMenu/faq4";
	}
	@RequestMapping(value = "myPointCharge")
	public String myPointCharge() {
		return "myMenu/myPointCharge";
	}
	@RequestMapping(value = "myPoint")
	public String myPoint() {
		return "myMenu/myPoint";
	}
}
