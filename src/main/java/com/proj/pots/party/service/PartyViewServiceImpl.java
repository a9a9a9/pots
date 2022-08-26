package com.proj.pots.party.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proj.pots.member.dto.MemberDTO;
import com.proj.pots.member.dto.PointDTO;
import com.proj.pots.membership.dao.IMemberDAO;
import com.proj.pots.party.dao.IPartyViewDAO;
import com.proj.pots.party.dto.PartnerInfoDTO;
import com.proj.pots.party.dto.PartyMemberDTO;
import com.proj.pots.party.dto.PartyCommentDTO;
import com.proj.pots.party.dto.PartyDTO;
import com.proj.pots.party.dto.PartyListDTO;
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
	public ArrayList<PartyListDTO> createdParty(String id) {
		ArrayList<PartyListDTO> created = partyViewDao.createdParty(id);
		if(created != null) {
			for(PartyListDTO c : created) {
				if(c.getParty_subservice().equals("1010")) {
					c.setParty_subservice("넷플릭스"); 
					c.setLogo("/img/partylogo/netflix.png"); 
				} else if(c.getParty_subservice().equals("1020")) {
					c.setParty_subservice("왓챠");
					c.setLogo("/img/partylogo/watcha.png"); 
				} else if(c.getParty_subservice().equals("1030")) {
					c.setParty_subservice("유튜브");
					c.setLogo("/img/partylogo/youtube.png"); 
				} else if(c.getParty_subservice().equals("1040")) {
					c.setParty_subservice("WAVVE");
					c.setLogo("/img/partylogo/wavve.png"); 
				} else if(c.getParty_subservice().equals("1050")) {
					c.setParty_subservice("티빙");
					c.setLogo("/img/partylogo/tiving.png"); 
				} else if(c.getParty_subservice().equals("1080")) {
					c.setParty_subservice("디즈니");
					c.setLogo("/img/partylogo/disney.png"); 
				} else if(c.getParty_subservice().equals("2010")) {
					c.setParty_subservice("리디북스");
					c.setLogo("/img/partylogo/ridi.png"); 
				} else if(c.getParty_subservice().equals("2020")) {
					c.setParty_subservice("밀리의서재");
					c.setLogo("/img/partylogo/millie.png"); 
				} else if(c.getParty_subservice().equals("2030")) {
					c.setParty_subservice("YES24");
					c.setLogo("/img/partylogo/yes24.png"); 
				} else if(c.getParty_subservice().equals("2040")) {
					c.setParty_subservice("스포티파이");
					c.setLogo("/img/partylogo/spotify.png"); 
				} else if(c.getParty_subservice().equals("3010")) {
					c.setParty_subservice("닌텐도온라인");
					c.setLogo("/img/partylogo/nintendo.png"); 
				} else if(c.getParty_subservice().equals("3050")) {
					c.setParty_subservice("XBOX");
					c.setLogo("/img/partylogo/xbox.png"); 
				} else if(c.getParty_subservice().equals("6050")) {
					c.setParty_subservice("멤버쉽");
					c.setLogo("/img/partylogo/membership.png"); 
				} else if(c.getParty_subservice().equals("6010")) {
					c.setParty_subservice("MSOffice");
					c.setLogo("/img/partylogo/office365.png"); 
				}
				else {
					c.setParty_subservice("기타");
					c.setLogo("/img/partylogo/membership.png"); 
				}
			} 
		}
		return created; 
	}
	
	@Override
	public ArrayList<PartyListDTO> joinedParty(String id) {
		ArrayList<PartyListDTO> joined = partyViewDao.joinedParty(id);
		if(joined != null) {
			for(PartyListDTO j : joined) {
				if(j.getParty_subservice().equals("1010")) {
					j.setParty_subservice("넷플릭스"); 
					j.setLogo("/img/partylogo/netflix.png"); 
				} else if(j.getParty_subservice().equals("1020")) {
					j.setParty_subservice("왓챠");
					j.setLogo("/img/partylogo/watcha.png"); 
				} else if(j.getParty_subservice().equals("1030")) {
					j.setParty_subservice("유튜브");
					j.setLogo("/img/partylogo/youtube.png"); 
				} else if(j.getParty_subservice().equals("1040")) {
					j.setParty_subservice("WAVVE");
					j.setLogo("/img/partylogo/wavve.png"); 
				} else if(j.getParty_subservice().equals("1050")) {
					j.setParty_subservice("티빙");
					j.setLogo("/img/partylogo/tiving.png"); 
				} else if(j.getParty_subservice().equals("1080")) {
					j.setParty_subservice("디즈니");
					j.setLogo("/img/partylogo/disney.png"); 
				} else if(j.getParty_subservice().equals("2010")) {
					j.setParty_subservice("리디북스");
					j.setLogo("/img/partylogo/ridi.png"); 
				} else if(j.getParty_subservice().equals("2020")) {
					j.setParty_subservice("밀리의서재");
					j.setLogo("/img/partylogo/millie.png"); 
				} else if(j.getParty_subservice().equals("2030")) {
					j.setParty_subservice("YES24");
					j.setLogo("/img/partylogo/yes24.png"); 
				} else if(j.getParty_subservice().equals("2040")) {
					j.setParty_subservice("스포티파이");
					j.setLogo("/img/partylogo/spotify.png"); 
				} else if(j.getParty_subservice().equals("3010")) {
					j.setParty_subservice("닌텐도온라인");
					j.setLogo("/img/partylogo/nintendo.png"); 
				} else if(j.getParty_subservice().equals("3050")) {
					j.setParty_subservice("XBOX");
					j.setLogo("/img/partylogo/xbox.png"); 
				} else if(j.getParty_subservice().equals("6050")) {
					j.setParty_subservice("멤버쉽");
					j.setLogo("/img/partylogo/membership.png"); 
				} else if(j.getParty_subservice().equals("6010")) {
					j.setParty_subservice("MSOffice");
					j.setLogo("/img/partylogo/office365.png"); 
				}
				else {
					j.setParty_subservice("기타");
					j.setLogo("/img/partylogo/membership.png"); 
				} 
			}
		}
		return joined; 
	} 
	
	@Override
	public ArrayList<PartyMemberDTO> orderList(String id) {
		ArrayList<PartyMemberDTO> orderList = partyViewDao.orderList(id);
		if(orderList != null) {
			for(PartyListDTO o : orderList) {
				if(o.getParty_subservice().equals("1010")) {
					o.setParty_subservice("넷플릭스"); 
					o.setLogo("/img/partylogo/netflix.png"); 
				} else if(o.getParty_subservice().equals("1020")) {
					o.setParty_subservice("왓챠");
					o.setLogo("/img/partylogo/watcha.png"); 
				} else if(o.getParty_subservice().equals("1030")) {
					o.setParty_subservice("유튜브");
					o.setLogo("/img/partylogo/youtube.png"); 
				} else if(o.getParty_subservice().equals("1040")) {
					o.setParty_subservice("WAVVE");
					o.setLogo("/img/partylogo/wavve.png"); 
				} else if(o.getParty_subservice().equals("1050")) {
					o.setParty_subservice("티빙");
					o.setLogo("/img/partylogo/tiving.png"); 
				} else if(o.getParty_subservice().equals("1080")) {
					o.setParty_subservice("디즈니");
					o.setLogo("/img/partylogo/disney.png"); 
				} else if(o.getParty_subservice().equals("2010")) {
					o.setParty_subservice("리디북스");
					o.setLogo("/img/partylogo/ridi.png"); 
				} else if(o.getParty_subservice().equals("2020")) {
					o.setParty_subservice("밀리의서재");
					o.setLogo("/img/partylogo/millie.png"); 
				} else if(o.getParty_subservice().equals("2030")) {
					o.setParty_subservice("YES24");
					o.setLogo("/img/partylogo/yes24.png"); 
				} else if(o.getParty_subservice().equals("2040")) {
					o.setParty_subservice("스포티파이");
					o.setLogo("/img/partylogo/spotify.png"); 
				} else if(o.getParty_subservice().equals("3010")) {
					o.setParty_subservice("닌텐도온라인");
					o.setLogo("/img/partylogo/nintendo.png"); 
				} else if(o.getParty_subservice().equals("3050")) {
					o.setParty_subservice("XBOX");
					o.setLogo("/img/partylogo/xbox.png"); 
				} else if(o.getParty_subservice().equals("6050")) {
					o.setParty_subservice("멤버쉽");
					o.setLogo("/img/partylogo/membership.png"); 
				} else if(o.getParty_subservice().equals("6010")) {
					o.setParty_subservice("MSOffice");
					o.setLogo("/img/partylogo/office365.png"); 
				}
				else {
					o.setParty_subservice("기타");
					o.setLogo("/img/partylogo/membership.png"); 
				} 
			}
		}
		return orderList;  
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
	public PartyRegDTO partyDay(String party_num) {
		PartyRegDTO day = partyViewDao.partyDay(party_num); 
		return day;
	}
	
	@Override
	public PartyMemberDTO partyMember(String id) {
		PartyMemberDTO partyMember = partyViewDao.partyMember(id);
		return partyMember;
	}
	
	@Override
	public PartyMemberDTO payMethod(PartyDTO my) {
		PartyMemberDTO method = partyViewDao.payMethod(my);
		
		if(!method.getUse_account().equals("0") || !method.getUse_account().equals("") || !(method.getUse_account() == null)) {
			method.setUse_account("계좌이체");
		}else {
			method.setUse_account("");
		}
		if(!method.getUse_point().equals("0") || !method.getUse_point().equals("") || !(method.getUse_point() == null)) {
			method.setUse_point("포인트");
		}else {
			method.setUse_point("");
		}
		
		return method;
	}
	
	@Override
	public PartyRegDTO selectParty(String party_num) {
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
			party.setParty_subservice("기타");
			party.setLogo("/img/partylogo/membership.png"); 
		} 	
		
		return party;
	}
	
	@Override
	public PartyMemberDTO myPartyDay(String id, String party_num) {
		PartyMemberDTO myDay = partyViewDao.myPartyDay(id, party_num);
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
	public String partyMemberInsertProc(PartyMemberDTO partyMember, String party_num) {
		PartyListDTO paChk = partyViewDao.partyAvailableChk(party_num);
		System.out.println(paChk);
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
