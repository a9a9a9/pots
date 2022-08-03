package com.proj.pots;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	//common 폴더 파일
	@RequestMapping(value = "/header")
	public String header() {
		return "common/header";
	}
	
	@RequestMapping(value = "/footer")
	public String footer() {
		return "common/footer";
	}
	
	//categories 폴더 파일
	@RequestMapping(value ="/millie")
	public String millie() {
		return "categories/art/millie";
	}

	@RequestMapping(value ="/ridi")
	public String ridi() {
		return "categories/art/ridi";
	}

	@RequestMapping(value ="/spotify")
	public String spotify() {
		return "categories/art/spotify";
	}

	@RequestMapping(value ="/yes24")
	public String yes24() {
		return "categories/art/yes24";
	}
	
	@RequestMapping(value ="/membership")
	public String membership() {
		return "categories/etc/membership";
	}
	
	@RequestMapping(value ="/msoffice")
	public String msoffice() {
		return "categories/etc/msoffice";
	}
	
	@RequestMapping(value ="/nintendo")
	public String nintendo() {
		return "categories/game/nintendo";
	}
	
	@RequestMapping(value ="/xbox")
	public String xbox() {
		return "categories/game/xbox";
	}
	
	@RequestMapping(value ="/disney")
	public String disney() {
		return "categories/video/disney";
	}
	
	@RequestMapping(value ="/netflix")
	public String netflix() {
		return "categories/video/netflix";
	}
	
	@RequestMapping(value ="/tiving")
	public String tiving() {
		return "categories/video/tiving";
	}
	
	@RequestMapping(value ="/watcha")
	public String watcha() {
		return "categories/video/watcha";
	}
	
	@RequestMapping(value ="/wavve")
	public String wavve() {
		return "categories/video/wavve";
	}
	
	@RequestMapping(value ="/youtube")
	public String youtube() {
		return "categories/video/youtube";
	}
	
	//member 폴더 파일
	@RequestMapping(value = "/findMy")
	public String findMy() {
		return "member/findMy";
	}
	
	@RequestMapping(value = "/login")
	public String login() {
		return "member/login";
	}
	
	@RequestMapping(value = "/memberInfo")
	public String memberInfo() {
		return "member/memberInfo";
	}
	
	@RequestMapping(value = "/register")
	public String register() {
		return "member/register";
	}
	
	@RequestMapping(value = "/registerAgree")
	public String registerAgree() {
		return "member/registerAgree";
	}
	
	@RequestMapping(value = "/update")
	public String update() {
		return "member/findMy";
	}
	
	//myMenu 폴더 파일
	@RequestMapping(value = "/faq")
	public String faq() {
		return "myMenu/faq";
	}
	
	@RequestMapping(value = "/myPartyCreated")
	public String myPartyCreated() {
		return "myMenu/myPartyCreated";
	}
	
	@RequestMapping(value = "/myPartyJoined")
	public String myPartyJoined() {
		return "myMenu/myPartyJoined";
	}
	
	@RequestMapping(value = "/myPoint")
	public String myPoint() {
		return "myMenu/myPoint";
	}
	
	@RequestMapping(value = "/myPointCharge")
	public String myPointCharge() {
		return "myMenu/myPointCharge";
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
	
	//partyRecruit 폴더 파일
	@RequestMapping(value = "/partyMain")
	public String partyMain() {
		return "partyRecruit/partyMain";
	}
	
	@RequestMapping(value = "/partyOrder")
	public String partyOrder() {
		return "partyRecruit/partyOrder"; 
	}
}
