package com.proj.pots.membership.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.proj.pots.board.service.PageService;
import com.proj.pots.member.dto.LoginDTO;
import com.proj.pots.member.dto.MemberDTO;
import com.proj.pots.member.dto.PointDTO;
import com.proj.pots.membership.dao.IMemberDAO;
import com.proj.pots.party.dto.PartyMemberDTO;

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
		member.setPoint(500);
		
		//충전 내용
		PointDTO pointDto = new PointDTO();
		String content = "회원가입 축하";
		pointDto.setId(member.getId());
		pointDto.setPoint_content(content);
		pointDto.setPoint_charge(500); //충전 할 금액
		
		pointDto.setUse_point(0);
		
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm (E)");
		String dateConvert = sdf.format(date);
		pointDto.setPoint_date(dateConvert);
		
		memberDao.insertContent(pointDto);
		
		memberDao.insertLogin(login);
		memberDao.insertMember(member);
		return "가입 완료";
	}
	public String snsProc(MemberDTO member) {
		
		if(memberDao.isExistsnsId(member.getId()) > 0) 
			return "중복 아이디 입니다.";
		
		member.setPoint(500);
		//충전 내용
		PointDTO pointDto = new PointDTO();
		String content = "회원가입 축하";
		pointDto.setId(member.getId());
		pointDto.setPoint_content(content);
		pointDto.setPoint_charge(500); //충전 할 금액
		
		pointDto.setUse_point(0);
		
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm (E)");
		String dateConvert = sdf.format(date);
		pointDto.setPoint_date(dateConvert);
		
		memberDao.insertContent(pointDto);
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
			
			MemberDTO member = new MemberDTO();
			// 충전 포인트 금액
			System.out.println("현재금액 : " + pointc);
			System.out.println("충전금액 : " + od_point);
			
			String id = (String) session.getAttribute("id");
			int point = pointc + priced;
			
			
			member.setPoint(point);
			member.setId(id);
			
			//충전 내용
			PointDTO pointDto = new PointDTO();
			String content = "포인트 충전";
			pointDto.setId(id);
			pointDto.setPoint_content(content);
			pointDto.setPoint_charge(priced); //충전 할 금액
			
			pointDto.setUse_point(0);
			
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm (E)");
			String dateConvert = sdf.format(date);
			pointDto.setPoint_date(dateConvert);

		System.out.println("chargePoint : " + point); 
			memberDao.updatePoint(member);
			memberDao.insertContent(pointDto);
			session.setAttribute("point", point);
			
			String compoint = String.format("%,d", point);
			session.setAttribute("compoint", compoint);
			return "충전 완료";
			
		} 
		
		public void listpoint(String id, Model model, int currentPage, HttpServletRequest req) {
			MemberDTO member = new MemberDTO();
			PointDTO pointDto = new PointDTO();
			
			id = (String)session.getAttribute("id");
			int totalCount = memberDao.pointCount(id); 
			int pageBlock = 3;
			int end = currentPage * pageBlock;
			int begin = end+1 - pageBlock;
			
			// 포인트 조회
			ArrayList<PointDTO> pointlist = memberDao.listpoint(id, begin, end);
			String url = req.getContextPath() + "/myPointproc?";
			url += "currentPage=";
			 
			model.addAttribute("page", PageService.getNavi(currentPage, pageBlock, totalCount, url));
			
			for(PointDTO p : pointlist) {
				
			String point = String.format("%,d", p.getPoint_charge());
			p.setComcharge(point); 
			
			String pointm = String.format("%,d", p.getUse_point());
			p.setComuse(pointm);
			
			}
			
			model.addAttribute("pointlist", pointlist);
			

		}

		public String captchaProc(HttpServletRequest request, Model model) {
			LoginDTO login = new LoginDTO();
			String getAnswer = (String) request.getSession().getAttribute("captcha");
			   String answer = request.getParameter("answer");
			   String id = request.getParameter("id");
			   
			   login.setId(id);
			  System.out.println(id);
				   if(memberDao.isExistId(login.getId()) > 0) {
					   
					   if(getAnswer.equals(answer)) {
						   return "인증 완료";
					   }else {
						   return "인증 실패";
					   }
				   }else {
					   return "존재하지 않는 회원입니다.";
				   }
			   
		}

	
}
