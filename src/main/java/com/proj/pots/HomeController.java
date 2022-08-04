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
	
	@RequestMapping(value = "/registerAgree")
	public String registerAgree() {
		return "member/registerAgree";
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
	
	@RequestMapping(value = "myPointCharge")
	public String myPointCharge() {
		return "myMenu/myPointCharge";
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
	@RequestMapping(value = "communityBoardView")
	public String communityBoardView() {
		return "board/communityBoardView";
	}
	@RequestMapping(value = "noticeBoardView")
	public String noticeBoardView() {
		return "board/noticeBoardView";
	}
}
