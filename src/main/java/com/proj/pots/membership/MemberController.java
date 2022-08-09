package com.proj.pots.membership;

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
import com.proj.pots.membership.service.MemberService;

@Controller
public class MemberController {
	@Autowired private MemberService memberService;
	
	@PostMapping(value = "isExistId", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String isExistId(@RequestBody(required = false) String id) {
		String msg = memberService.isExistId(id);
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
}
