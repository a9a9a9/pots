package com.proj.pots;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.proj.pots.membership.service.MemberService;
import com.proj.pots.party.dto.PartyMemberDTO;
import com.proj.pots.party.service.IPartyViewService;

@Controller
public class HomeController {
	
	@Autowired IPartyViewService service;
	@Autowired MemberService memberService;
	
	@RequestMapping(value = "/")
	public String index(Model model) { 
		model.addAttribute("formpath", "main");
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
	@RequestMapping(value = "/video")
	public String video() {
		return "categories/video/video";
	}
	@RequestMapping(value = "/art")
	public String art() {
		return "categories/art/art";
	}
	@RequestMapping(value = "/game")
	public String game() {
		return "categories/game/game";
	}
	@RequestMapping(value = "/etc")
	public String etc() {
		return "categories/etc/etc";
	}
	
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
	
	@RequestMapping(value = "login")
	public String login(HttpServletRequest req, HttpSession session) {
		String uri = req.getHeader("Referer");
		System.out.println(uri);
		String str[] = uri.split("/");
		uri = str[3];
		System.out.println(uri);
		session.setAttribute("url", uri);
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

//	@RequestMapping(value = "/myPartyCreated")
//	public String myPartyCreated() { 
//		return "myMenu/myPartyCreated";
//	}
//	
//	@RequestMapping(value = "/myPartyJoined")
//	public String myPartyJoined() {
//		return "myMenu/myPartyJoined";
//	}
	
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
	
	@RequestMapping(value = "memberDelete")
	public String pwConfirm() {
		return "member/memberDelete";
	}
	@RequestMapping(value = "register")
	public String register() {
		return "member/register";
	}
	@RequestMapping(value = "snsRegister")
	public String snsRegister() {
		return "member/snsRegister";
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
	@RequestMapping(value = "board")
	public String board() {
		return "board/communityBoard";
	}
	@RequestMapping(value = "noticeBoard")
	public String noticeBoard() {
		return "board/noticeBoard";
	}
//	@RequestMapping(value = "boardWrite")
//	public String boardWrite() {
//		return "board/boardWrite";
//	}
//
//	@RequestMapping(value = "communityBoardView")
//	public String communityBoardView() {
//		return "board/communityBoardView";
//	}
//	@RequestMapping(value = "noticeBoardView")
//	public String noticeBoardView() {
//		return "board/noticeBoardView";
//
//	}
	@RequestMapping(value = "profile")
	public String profile() {
		return "member/profile";
	}
//	@RequestMapping(value = "main")
//	public String main() {
//		return "main";
//	}
	@RequestMapping(value = "updateCheck")
	public String updateCheck() {
		return "member/updateCheck";
	}
//	@RequestMapping(value = "partyOrderInfo")
//	public String partyOrderInfo() {
//		return "partyRecruit/partyOrderInfo";
//	}
	@RequestMapping(value = "findpass")
	public String findpass() {
		return "member/findpass";
	}
	
}
