package com.proj.pots.party.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.proj.pots.member.dto.MemberDTO;
import com.proj.pots.member.dto.PointDTO;
import com.proj.pots.membership.dao.IMemberDAO;
import com.proj.pots.party.dao.IPartyViewDAO;
import com.proj.pots.party.dto.PartnerInfoDTO;
import com.proj.pots.party.dto.PartyMemberDTO;
import com.proj.pots.party.dto.PartyBillDTO;
import com.proj.pots.party.dto.PartyCommentDTO;
import com.proj.pots.party.dto.PartyDTO;
import com.proj.pots.party.dto.PartyListDTO;
import com.proj.pots.party.dto.PartyParDTO;
import com.proj.pots.party.dto.PartyRegDTO;

@Service
public class PartyViewServiceImpl implements IPartyViewService{

	@Autowired IPartyViewDAO partyViewDao;
	@Autowired IMemberDAO memberDao;
	@Autowired private HttpSession session;
	
	@Override
	public ArrayList<PartyCommentDTO> comment(String id) {
		ArrayList<PartyCommentDTO> list = partyViewDao.comment(id);
		return list;  
	}
	
	@Override
	public MemberDTO memberInfo(String id) {
		MemberDTO member = memberDao.memberInfo(id);
		return member;
	}
	
	@Override
	public PartnerInfoDTO selectAccount(String id) {
		PartnerInfoDTO partner = partyViewDao.selectAccount(id); 
		return partner;
	}
	
	@Override
	public PartyRegDTO partyDay(Integer party_num) {
		PartyRegDTO day = partyViewDao.partyDay(party_num); 
		return day;
	}
	
	@Override
	public PartyMemberDTO partyMember(String id) {
		PartyMemberDTO partyMember = partyViewDao.partyMember(id);
		return partyMember;
	}
	
	@Override
	public PartyMemberDTO payMethod(String id) {
		PartyMemberDTO method = partyViewDao.payMethod(id);
		
		if(!method.getUse_account().equals("0")) {
			method.setUse_account("계좌이체");
		}else {
			method.setUse_account("");
		}
		if(!method.getUse_point().equals("0")) {
			method.setUse_point("포인트");
		}else {
			method.setUse_point("");
		}
		
		return method;
	}
	
	@Override
	public PartyRegDTO selectParty(Integer party_num) {
		PartyRegDTO party = partyViewDao.selectParty(party_num); 
		
		if(party.getParty_service().equals("10")) party.setParty_service("영상");
		else if (party.getParty_service().equals("20")) party.setParty_service("도서/음악");
		else if (party.getParty_service().equals("30")) party.setParty_service("게임");
		else party.setParty_service("기타");
		
		if(party.getParty_subservice().equals("1010")) {
			party.setParty_subservice("넷플릭스"); 
			party.setLogo("/img/partylogo/netflix.png"); 
		} else if(party.getParty_subservice().equals("1020")) {
			party.setParty_subservice("왓챠");
			party.setLogo("/img/partylogo/watcha.png"); 
		} else if(party.getParty_subservice().equals("1030")) {
			party.setParty_subservice("유튜브");
			party.setLogo("/img/partylogo/youtube.png"); 
		} else if(party.getParty_subservice().equals("1040")) {
			party.setParty_subservice("WAVVE");
			party.setLogo("/img/partylogo/wavve.png"); 
		} else if(party.getParty_subservice().equals("1050")) {
			party.setParty_subservice("티빙");
			party.setLogo("/img/partylogo/tiving.png"); 
		} else if(party.getParty_subservice().equals("1080")) {
			party.setParty_subservice("디즈니");
			party.setLogo("/img/partylogo/disney.png"); 
		} else if(party.getParty_subservice().equals("2010")) {
			party.setParty_subservice("리디북스");
			party.setLogo("/img/partylogo/ridi.png"); 
		} else if(party.getParty_subservice().equals("2020")) {
			party.setParty_subservice("밀리의서재");
			party.setLogo("/img/partylogo/millie.png"); 
		} else if(party.getParty_subservice().equals("2030")) {
			party.setParty_subservice("YES24");
			party.setLogo("/img/partylogo/yes24.png"); 
		} else if(party.getParty_subservice().equals("2040")) {
			party.setParty_subservice("스포티파이");
			party.setLogo("/img/partylogo/spotify.png"); 
		} else if(party.getParty_subservice().equals("3010")) {
			party.setParty_subservice("닌텐도온라인");
			party.setLogo("/img/partylogo/nintendo.png"); 
		} else if(party.getParty_subservice().equals("3050")) {
			party.setParty_subservice("XBOX");
			party.setLogo("/img/partylogo/xbox.png"); 
		} else if(party.getParty_subservice().equals("6050")) {
			party.setParty_subservice("멤버쉽");
			party.setLogo("/img/partylogo/membership.png"); 
		} else if(party.getParty_subservice().equals("6010")) {
			party.setParty_subservice("MSOffice");
			party.setLogo("/img/partylogo/office365.png"); 
		}
		else {
			party.setParty_subservice("#기타");
			party.setLogo("/img/partylogo/membership.png"); 
		} 	
		
		return party;
	}
	
	@Override
	public PartyRegDTO endDay(Integer party_num) { 
		PartyRegDTO end = partyViewDao.endDay(party_num); 
		return end; 
	}
	
	@Override
	public PartyRegDTO myPartyDay(String id, Integer party_num) {
		PartyRegDTO myDay = partyViewDao.myPartyDay(id, party_num);
		
		return myDay; 
	}
	
	@Override
	public String accountInsertProc(PartnerInfoDTO partner) {
		int i = partyViewDao.insertAccount(partner);
		if(i == 1)
			return "성공";
		else 
			return "실패";
	}
	
	@Override
	public String accountModifyProc(PartnerInfoDTO partner) {
		
		int i = partyViewDao.updateAccount(partner);
		if(i == 1)
			return "성공";
		else 
			return "실패";
	}
	
	@Override
	public String partyMemberInsertProc(PartyMemberDTO partyMember, int party_num) {
		PartyListDTO paChk = partyViewDao.partyAvailableChk(party_num);
		if(paChk != null) {
			int tmp = paChk.getParty_member() - paChk.getParty_now_member();
			if(tmp <= 0) {
				return "신청불가";
			}
			if(tmp == 1) {
				partyViewDao.updateParty(party_num);
			}
		}
		
		insertuse(partyMember.getUse_point());
			
		

		partyViewDao.insertPartyMember(partyMember);
		partyViewDao.updatePoint(partyMember);
		return "신청완료";
	}
	
	public PointDTO insertuse(String usepoint) {
		String id = (String)session.getAttribute("id");
		PointDTO pointDto = new PointDTO();
		String content = "포인트 결제";
		pointDto.setId(id);
		pointDto.setPoint_content(content);
		pointDto.setPoint_charge(0); 
		int minupoint = Integer.parseInt(usepoint);
		pointDto.setUse_point(minupoint); //사용 된 금액
		
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm (E)");
		String dateConvert = sdf.format(date);
		pointDto.setPoint_date(dateConvert);
		memberDao.insertContent(pointDto);
		
		int pointc = (int)session.getAttribute("point");
		
		int point = pointc - minupoint;
		session.setAttribute("point", point);
		
		String compoint = String.format("%,d", point);
		session.setAttribute("compoint", compoint);
		return pointDto;
	}
	
}
