package com.proj.pots.membership.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.proj.pots.member.dto.LoginDTO;
import com.proj.pots.member.dto.MemberDTO;
import com.proj.pots.member.dto.PointDTO;
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
	public String isExistNick(String nick) {
		if (nick == null)
			return "아이디를 입력 하세요.";
		int count = memberDao.isExistNick(nick);
		if(count == 1)
			return "중복 닉네임 입니다.";
		return "사용 가능한 닉네임입니다.";
	} 
	public String isExistsnsId(String id) {
		int count = memberDao.isExistsnsId(id);
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
	public String snsProc(MemberDTO member) {
		
		if(member.getId() == null || member.getId().isEmpty())
			return "아이디를 입력하세요.";
		if(memberDao.isExistsnsId(member.getId()) > 0) 
			return "중복 아이디 입니다.";
		
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
	
	public String ChargeProc(String od_point, Model model) {
		int pointc = (int)session.getAttribute("point");
		int priced = Integer.parseInt(od_point);
		
		public String ChargeProc(String od_point) {
			int pointc = (int)session.getAttribute("point");
			int priced = Integer.parseInt(od_point);
			
			MemberDTO member = new MemberDTO();
			
			System.out.println("현재금액 : " + pointc);
			System.out.println("충전금액 : " + od_point);
			
			String id = (String) session.getAttribute("id");
			int point = pointc + priced;

			System.out.println("현재 포인트 : " + point); 
			
			member.setPoint(point);
			member.setId(id);
			
			//충전 내용
			PointDTO pointDto = new PointDTO();
			String content = "포인트 충전";
			pointDto.setId(id);
			pointDto.setPoint_content(content);
			pointDto.setPoint_charge(priced);
			
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm (E)");
			String dateConvert = sdf.format(date);
			pointDto.setPoint_date(dateConvert);

		// 충전 포인트 금액
		System.out.println("charge123 : " + od_point);
		System.out.println("charge12334 : " + pointc);
		String id = (String) session.getAttribute("id");
		int point = pointc + priced;

		System.out.println("chargePoint : " + point); 
		// 충전 내용
		PointDTO pointDto = new PointDTO();
		String content = "포인트 충전";
		pointDto.setId(id);
		pointDto.setPoint_content(content);
		pointDto.setPoint_charge(priced);
			memberDao.updatePoint(member);
			memberDao.insertContent(pointDto);
			session.setAttribute("point", point);
			return "충전 완료";
			
		} 
		
		public void listpoint(String id, Model model) {
			// 포인트 조회
			id = (String)session.getAttribute("id");
			ArrayList<PointDTO> pointlist = memberDao.listpoint(id);
			model.addAttribute("pointlist", pointlist);
					
			
		}
			
		
		ArrayList<PointDTO> pointlist = memberDao.selectPoint(pointDto);
		model.addAttribute("pointlist", pointlist);
		
		memberDao.updatePoint(member);
		memberDao.insertContent(pointDto);
		session.setAttribute("point", point);
		
		return "충전 완료";
		
	} 
	

	
}
