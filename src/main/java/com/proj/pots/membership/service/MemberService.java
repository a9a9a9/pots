package com.proj.pots.membership.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.proj.pots.member.dto.LoginDTO;
import com.proj.pots.member.dto.MemberDTO;
import com.proj.pots.membership.dao.IMemberDAO;

@Service
@Transactional
public class MemberService {
	@Autowired IMemberDAO memberDao;
	@Autowired HttpSession session;
	
	public String isExistId(String id) {
		if (id == null)
			return "아이디를 입력 하세요.";
		int count = memberDao.isExistId(id);
		if(count == 1)
			return "중복 아이디 입니다.";
		return "사용 가능한 아이디입니다.";
	} 
	
	public String memberProc(MemberDTO member) {
		LoginDTO login = member;
		
		if(login.getId() == null || login.getId().isEmpty())
			return "아이디를 입력하세요.";
		if(login.getPw() == null || login.getPw().isEmpty())
			return "비밀번호를 입력하세요.";
		if(memberDao.isExistId(login.getId()) > 0)
			return "중복 아이디 입니다.";
		
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String securePw = encoder.encode(login.getPw());
		login.setPw(securePw);
		
		memberDao.insertLogin(login);
		memberDao.insertMember(member);
		return "가입 완료";
	}

	public String updateProc(MemberDTO member) {
		LoginDTO login = member;
		if(login.getPw() == null || login.getPw().isEmpty())
			return "비밀번호를 입력하세요.";
		
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String securePw = encoder.encode(login.getPw());
		login.setPw(securePw);
		
		memberDao.updateLogin(login);
		memberDao.updateMember(member);
		session.setAttribute("name", member.getName());
		session.setAttribute("nick", member.getNick());
		session.setAttribute("tel", member.getTel());
		session.setAttribute("profile", member.getProfile());
		return "수정 완료";
	}
	
	public MemberDTO memberInfo(String id) {
		MemberDTO member = memberDao.memberInfo(id);
		return member;
	}

	public String deleteCheckProc(LoginDTO check) {
		String id = (String)session.getAttribute("id");
		
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		LoginDTO login = memberDao.memberPassword(id);
		
		if(login == null)
			return "아이디 없음";
		if(encoder.matches(check.getPw(), login.getPw()) == false)
			return "비밀번호가 다릅니다.";
		
		memberDao.deleteLogin(id);
		memberDao.deleteMember(id);
		session.invalidate();
		return "탈퇴 완료";
	}

	public String updateCheckProc(LoginDTO check) {
		String id = (String)session.getAttribute("id");
		
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		LoginDTO login = memberDao.memberPassword(id);
		if(login == null)
			return "아이디 없음";
		if(encoder.matches(check.getPw(), login.getPw()) == false)
			return "비밀번호가 다릅니다.";

		return "확인 완료";
	}

	public String profileUpdateProc(MemberDTO member) {
		if (member.getId() == null || member.getId().isEmpty())
			return "로그인 필요";
		
		memberDao.profileUpdate(member);
		session.setAttribute("profile", member.getProfile());
		return "사진 저장";
	}
	
}
