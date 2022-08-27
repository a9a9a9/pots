package com.proj.pots.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.proj.pots.login.service.ILoginService;
import com.proj.pots.member.dto.LoginDTO;

@Controller
public class LoginController {
	@Autowired private ILoginService loginService;
	
	@PostMapping(value = "loginProc") 
	public String loginProc(LoginDTO login, Model model, HttpSession session) {
		String msg = loginService.loginProc(login);
		String url = (String) session.getAttribute("url");
		if(msg.equals("로그인 성공")) {
			return "redirect:/"+url;
		}
		model.addAttribute("msg", msg);
		return "forward:/index?formpath=login";
	}
	
	@RequestMapping(value = "logout")
	public String logout(Model model, HttpSession session) {
		session.invalidate();
		model.addAttribute("msg", "로그 아웃");
		return "forward:index?formpath=main";
	}
	
	   @RequestMapping(value = "PassProc")
		public String PassProc(LoginDTO login, Model model, RedirectAttributes ra) {
			String msg = loginService.PassProc(login);
			if(msg.equals("수정 완료")) {
				ra.addFlashAttribute("msg", msg);
				return "redirect:/index?formpath=main";
			}else {
				model.addAttribute("msg",msg);
				return "forward:/index?formpath=findpass";
			}
	   }
	
}
