package com.proj.pots.login.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.proj.pots.login.dao.ILoginDAO;
import com.proj.pots.member.dto.MemberDTO;

@Service
public class LoginServiceImpl implements ILoginService{
	@Autowired private ILoginDAO loginDao;
	@Autowired private HttpSession session;
	
	@Override
	public String loginProc(MemberDTO login) {
		if(login.getId() == null || login.getId().isEmpty())
			return "아이디를 입력하세요.";
		
		if(login.getPw() == null || login.getPw().isEmpty())
			return "비밀번호를 입력하세요.";
		
		MemberDTO check = loginDao.loginProc(login);
		
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		
		if(check != null && encoder.matches(login.getPw(), check.getPw())) {
			session.setAttribute("id", check.getId());
			return "로그인 성공";
		}else
			return "아이디 또는 비밀번호를 확인하세요.";
	}
}
