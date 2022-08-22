package com.proj.pots.membership;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.proj.pots.member.dto.LoginDTO;
import com.proj.pots.member.dto.MemberDTO;
import com.proj.pots.membership.dao.IMemberDAO;
import com.proj.pots.membership.service.KakaoService;
//import com.proj.pots.membership.service.naverService;
import com.proj.pots.membership.service.MemberService;

@Controller
public class MemberController {
	@Autowired private MemberService memberService;
	@Autowired IMemberDAO memberDao;

	
	@PostMapping(value = "isExistId", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String isExistId(@RequestBody(required = false) String id) {
		String msg = memberService.isExistId(id);
		return msg;
	}
	@PostMapping(value = "isExistsnsId", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String isExistsnsId(@RequestBody(required = false) String id) {
		String msg = memberService.isExistsnsId(id); 
		return msg;
	}

	@RequestMapping(value = "memberProc")
	public String memberProc(MemberDTO member, Model model, RedirectAttributes ra) {
		String msg = memberService.memberProc(member);
		if(msg.equals("가입 완료")) {
			ra.addFlashAttribute("msg", msg);
			return "redirect:/index?formpath=main";
		}else {
			model.addAttribute("msg", msg);
			return "forward:/index?formpath=register";
		}
	}
	@RequestMapping(value = "snsProc")
	public String snsProc(MemberDTO member, Model model, RedirectAttributes ra) {
		member.setSns(1);
		String msg = memberService.snsProc(member);
		if(msg.equals("가입 완료")) {
			ra.addFlashAttribute("msg", msg);
			return "redirect:/index?formpath=main";
		}else {
			model.addAttribute("msg", msg);
			return "forward:/index?formpath=snsRegister";
		}
	}
	
	@RequestMapping(value = "updateProc")
	public String updateProc(MemberDTO member, Model model, RedirectAttributes ra) {
		String msg = memberService.updateProc(member);
		if(msg.equals("수정 완료")) {
			ra.addFlashAttribute("msg", msg);
			return "redirect:/index?formpath=main";
		}else {
			model.addAttribute("msg",msg);
			return "forward:/index?formpath=update";
		}
	}
	
	@RequestMapping(value = "profileUpdateProc")
	public String profileUpdateProc(HttpSession session, MemberDTO member, Model model, RedirectAttributes ra) {
		member.setId((String)session.getAttribute("id"));
		String msg = memberService.profileUpdateProc(member);
		if(msg.equals("사진 저장")) {
			ra.addFlashAttribute("msg",msg);
			return "redirect:/profile";
		}
		model.addAttribute("msg",msg);
		return "forward:/profile";
	}
	
	@RequestMapping(value = "memberInfoProc")
	public String memberInfo(HttpSession session, Model model) {
		String sessionId = (String)session.getAttribute("id");
		
		if(sessionId == "" || sessionId == null) {
			return "redirect:/index?formpath=login";
		}
		model.addAttribute("member", memberService.memberInfo(sessionId));
		return "forward:index?formpath=memberInfo";
	}
	
	@RequestMapping(value = "deleteCheckProc")
	public String deleteCheckProc(LoginDTO check, Model model, RedirectAttributes ra) {
		String msg = memberService.deleteCheckProc(check);
		if(msg.equals("탈퇴 완료")) {
			ra.addFlashAttribute("msg", msg);
			return "redirect:/index?formpath=main";
		}else {
			model.addAttribute("msg", msg);
			return "forward:/index?formpath=memberDelete";
		}
	}
	
	@RequestMapping(value = "updateCheckProc")
	public String updateCheckProc(LoginDTO check, Model model, HttpSession session, RedirectAttributes ra) {
		String msg = memberService.updateCheckProc(check);
		String sessionId = (String)session.getAttribute("id");
		if(sessionId == "" || sessionId == null) {
			return "redirect:/index?formpath=login";
		}
		if(msg.equals("확인 완료")) {
			model.addAttribute("member", memberService.memberInfo(sessionId));
			return "forward:index?formpath=update";
		}
		ra.addFlashAttribute("msg", msg);
		return "redirect:/index?formpath=updateCheck";
	}
	
	@Autowired private KakaoService kakaoService;
	@RequestMapping("kakaoRegister")
	public String kakaoRegister(String code, HttpSession session, MemberDTO member) {
		System.out.println("code : " + code);
		String accessToken = kakaoService.getAccessToken(code);
		HashMap<String, String> map = kakaoService.getUserInfo(accessToken);
		System.out.println("이름 : " + map.get("name"));
		System.out.println("아이디 : " + map.get("id"));
		
		int kakaoid = memberDao.isExistsnsId(map.get("id"));
		member = memberDao.memberInfo(map.get("id"));
		
		if(kakaoid == 1) {
			session.setAttribute("id", map.get("id"));
			session.setAttribute("nick", member.getNick());
			session.setAttribute("accessToken", accessToken);
			return "redirect:/index?formpath=main";
		}else {
		session.setAttribute("kakaoid", map.get("kakaoid"));
		session.setAttribute("kakaoname", map.get("kakaoname"));
		session.setAttribute("accessToken", accessToken);
		return "redirect:/index?formpath=snsRegister";
	}
	}
//	@Autowired private naverService naverService;
//	@RequestMapping("CallBack")
//	public String CallBack(String code, HttpSession session, MemberDTO member, String state) {
//		System.out.println("code : " + code);
//		String accessToken = naverService.getAccessToken(code, state); 
//		HashMap<String, String> map = naverService.getUserInfo(accessToken);
//		System.out.println("이름 : " + map.get("name"));
//		System.out.println("아이디 : " + map.get("id"));
//		
//		int kakaoid = memberDao.isExistsnsId(map.get("id"));
//		member = memberDao.memberInfo(map.get("id"));
//		
//		if(kakaoid == 1) {
//			session.setAttribute("id", map.get("id"));
//			session.setAttribute("nick", member.getNick());
//			session.setAttribute("accessToken", accessToken);
//			return "redirect:/index?formpath=main";
//		}else {
//			session.setAttribute("naverid", map.get("naverid"));
//			session.setAttribute("navername", map.get("navername"));
//			session.setAttribute("accessToken", accessToken);
//			return "redirect:/index?formpath=snsRegister";
//		}
//	}
	
	@RequestMapping(value = "ChargeProc")
	public String ChargeProc(String od_point, Model model) {
		System.out.println("charge : " + od_point);
		String msg = memberService.ChargeProc(od_point);

		if(msg.equals("충전 완료")) {
		model.addAttribute("msg", msg);
		
			return "forward:/index?formpath=main";
		}else {
			return "redirect:index?formpaty=myPointCharge";
		}
		
		
	}
}
