package com.proj.pots.party.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proj.pots.party.dao.IPartyMngDAO;
import com.proj.pots.party.dto.PartyBillDTO;
import com.proj.pots.party.dto.PartyCommentDTO;
import com.proj.pots.party.dto.PartyListDTO;
import com.proj.pots.party.dto.PartyMemberDTO;
import com.proj.pots.party.dto.PartyRegDTO;

@Service
public class PartyMngService {
	@Autowired IPartyMngDAO mngDao;
	private int bill_paid = 0;
	private int bill_request = 0;
	private int bill_today = 0;

	public ArrayList<PartyBillDTO> bill(String id) {
		bill_paid = 0;
		bill_request = 0;
		ArrayList<PartyBillDTO> bill = mngDao.bill(id);
		for(PartyBillDTO b : bill) {
			if(b.getBill_pay() == 0 ) bill_request += b.getBill_charge();
			bill_paid += b.getBill_pay();
			String date = b.getBill_date().substring(0,10);
			Date now = new Date();
			String now_date = new SimpleDateFormat("yyyy-MM-dd").format(now);
			if(date.equals(now_date)) bill_today = 1;
		}
		return bill;
	}
	
	public Map<String, Object> billMap(String id) {
		Map<String, Object> billMap = new HashMap<String, Object>();
		int bill_total = mngDao.bill_total(id);
		ArrayList<PartyListDTO>  bill_now_list = mngDao.bill_now(id);
		int bill_now = 0;
		for(PartyListDTO b : bill_now_list) {
			bill_now += b.getParty_now_member();
		}
		
		billMap.put("bill_total", bill_total);
		billMap.put("bill_now", bill_now);
		billMap.put("bill_paid", bill_paid);
		billMap.put("bill_request", bill_request);
		billMap.put("bill_available", bill_total - bill_paid - bill_now - bill_request);
		billMap.put("bill_today", bill_today);
		return billMap;
	}

	public String check_day(String party_start, String party_end) throws ParseException {
		String count = "";
		Date format1 = new SimpleDateFormat("yyyy-MM-dd").parse(party_start);
		Date format2 = new SimpleDateFormat("yyyy-MM-dd").parse( party_end);
		
		long days = (format2.getTime() - format1.getTime()) / (1000*24*60*60);
		if(days > 0)
			count = Long.toString(days);
		else
			count = "0";
		
		System.out.println(count + days);
		return count;
	}
	
	
	public String check_cash(String party_start, String party_end, String party_charge, String party_member) throws ParseException{
		String count = check_day( party_start,  party_end);
		int count_tmp = Integer.parseInt(count);
		int price_tmp = Integer.parseInt( party_charge);
		int num_tmp = Integer.parseInt( party_member);
		
		int total = count_tmp * price_tmp * num_tmp;
		
		String income = String.valueOf(total);
		return income;
	}
	
	// 파티로 파티장이 받을 수 있는 돈
	public String check_total_charge(String party_start, String party_end, int party_charge) throws ParseException{
		String count = check_day( party_start,  party_end);
		int count_tmp = Integer.parseInt(count);
		int price_tmp = party_charge;
		
		int total = count_tmp * price_tmp ;
		
		String income = String.valueOf(total);
		return income;
	}
	
	// 오늘로 부터 남은 일수
	public String check_today(String party_end) throws ParseException {
		String today = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		Date format1 = new SimpleDateFormat("yyyy-MM-dd").parse(today);
		Date format2 = new SimpleDateFormat("yyyy-MM-dd").parse( party_end);
		String count = "";
		
		long days = (format2.getTime() - format1.getTime()) / (1000*24*60*60);
		
		if(days <= 0) {
			count = "0";
		}else {
			count = Long.toString(days);
		}
		
		System.out.println(count + days);
		return count;
	}
	
	// 파티 리스트 불러오는 메서드
	public ArrayList<PartyListDTO> partyList(String id) throws ParseException {
		ArrayList<PartyListDTO> partyList = mngDao.partyList(id);
		if(partyList != null)
			partyList = listSetter(partyList);
		
		return partyList;
	}
	
	// 파티 삽입
	public int insert(PartyRegDTO partyDto) {
		int i = mngDao.insertParty(partyDto);
		if(i == 1) {
			PartyListDTO dto = mngDao.latestParty(partyDto.getId());
			int party_num = dto.getParty_num();
			return party_num; 
		}
		return -1;
		
	}
	
	public ArrayList<PartyListDTO> partySearch(Map<String, String> map) throws ParseException {
		ArrayList<PartyListDTO> list = mngDao.partySearch(map);
		if(list != null)
			list = listSetter(list);
		
		return list;
		
	}
	

	public String notMyPartyNick(String nick) {
		int length = nick.length();
		String tmp  = nick.substring(0, 1);
		for(int i = 1; i < length; i++) {
			tmp += "*";
		}
		return tmp;
	}
	
	//파티리스트 서비스 명을 한글로 바꿔주는 메서드
	public ArrayList<PartyListDTO> listSetter(ArrayList<PartyListDTO> list) throws ParseException {
		
		for(PartyListDTO p : list) {
			String party_total_charge = 
						check_total_charge(p.getParty_start(), p.getParty_end(), p.getParty_charge());
			if(party_total_charge != null)
				p.setParty_total_charge(party_total_charge);
			
			int party_left_member = p.getParty_member() - p.getParty_now_member();
			
			if(party_left_member >= 0)
				p.setParty_left_member(party_left_member);
			else
				p.setParty_left_member(0);
			
			String party_left_date = check_day(p.getParty_start(), p.getParty_end());
			p.setParty_left_date(party_left_date);
			
			
			if(p.getParty_service().equals("10")) p.setParty_service("영상");
			else if (p.getParty_service().equals("20")) p.setParty_service("도서/음악");
			else if (p.getParty_service().equals("30")) p.setParty_service("게임");
			else p.setParty_service("기타");
			

			if(p.getParty_subservice().equals("1010")) {
				p.setParty_subservice("#넷플릭스"); 
				p.setLogo("/img/partylogo/netflix.png"); 
			} else if(p.getParty_subservice().equals("1020")) {
				p.setParty_subservice("#왓챠");
				p.setLogo("/img/partylogo/watcha.png"); 
			} else if(p.getParty_subservice().equals("1030")) {
				p.setParty_subservice("#유튜브");
				p.setLogo("/img/partylogo/youtube.png"); 
			} else if(p.getParty_subservice().equals("1040")) {
				p.setParty_subservice("#WAVVE");
				p.setLogo("/img/partylogo/wavve.png"); 
			} else if(p.getParty_subservice().equals("1050")) {
				p.setParty_subservice("#티빙");
				p.setLogo("/img/partylogo/tiving.png"); 
			} else if(p.getParty_subservice().equals("1080")) {
				p.setParty_subservice("#디즈니");
				p.setLogo("/img/partylogo/disney.png"); 
			} else if(p.getParty_subservice().equals("2010")) {
				p.setParty_subservice("#리디북스");
				p.setLogo("/img/partylogo/ridi.png"); 
			} else if(p.getParty_subservice().equals("2020")) {
				p.setParty_subservice("#밀리의서재");
				p.setLogo("/img/partylogo/millie.png"); 
			} else if(p.getParty_subservice().equals("2030")) {
				p.setParty_subservice("#YES24");
				p.setLogo("/img/partylogo/yes24.png"); 
			} else if(p.getParty_subservice().equals("2040")) {
				p.setParty_subservice("#스포티파이");
				p.setLogo("/img/partylogo/spotify.png"); 
			} else if(p.getParty_subservice().equals("3010")) {
				p.setParty_subservice("#닌텐도온라인");
				p.setLogo("/img/partylogo/nintendo.png"); 
			} else if(p.getParty_subservice().equals("3050")) {
				p.setParty_subservice("#XBOX");
				p.setLogo("/img/partylogo/xbox.png"); 
			} else if(p.getParty_subservice().equals("6050")) {
				p.setParty_subservice("#멤버쉽");
				p.setLogo("/img/partylogo/membership.png"); 
			} else if(p.getParty_subservice().equals("6010")) {
				p.setParty_subservice("#MSOffice");
				p.setLogo("/img/partylogo/office365.png"); 
			}
			else {
				p.setParty_subservice("#기타");
				p.setLogo("/img/partylogo/membership.png"); 
			} 	
			
			
			
			
			
		}
		
		return list;
	}

	// 내가 만든 파티의 모든 파티원 목록
	public ArrayList<PartyMemberDTO> partyJoinList(String id) throws ParseException {
		ArrayList<PartyMemberDTO> list = mngDao.partyJoinList(id);
		if(list != null) {
			for(PartyMemberDTO m : list) {
				String party_left_date = check_today(m.getParty_end());
				m.setParty_left_date(party_left_date);
				int money = Integer.parseInt(m.getMycharge());
				String format = String.format("%,d", money);
				m.setMycharge(format);
			}
		}
		return list;
	}

	//파티원 검색하기
	public ArrayList<PartyMemberDTO> joinSearch(Map<String, String> map) throws ParseException {
		ArrayList<PartyMemberDTO>list = mngDao.partyJoinSearch(map);
		if(list != null) {
			for(PartyMemberDTO m : list) {
				String party_left_date = check_today(m.getParty_end());
				m.setParty_left_date(party_left_date);
				int money = Integer.parseInt(m.getMycharge());
				String format = String.format("%,d", money);
				m.setMycharge(format);
			}
		}
		return list;
	}

	public PartyListDTO partyInfo(String party_num) throws ParseException {
		PartyListDTO partyInfo = mngDao.partySelect(party_num);
		if(partyInfo != null) {
			
			//남은일수 계산
			String party_left_date = check_today(partyInfo.getParty_end());
			partyInfo.setParty_left_date(party_left_date);
			
			// 남은 일수에서 일 평균 차지 계산하여 합계
			int daily = partyInfo.getParty_charge();
			int leftday = Integer.parseInt(party_left_date);
			String total = String.format("%,d", daily*leftday);
			partyInfo.setParty_total_charge(total);
			
			// 남은 인원수 계산
			int left = partyInfo.getParty_member() - partyInfo.getParty_left_member();
			partyInfo.setParty_left_member(left);
			
			//서비스 한글명으로 바꾸기
			if(partyInfo.getParty_service().equals("10")) partyInfo.setParty_service("영상");
			else if (partyInfo.getParty_service().equals("20")) partyInfo.setParty_service("도서/음악");
			else if (partyInfo.getParty_service().equals("30")) partyInfo.setParty_service("게임");
			else partyInfo.setParty_service("기타");
			
			if(partyInfo.getParty_subservice().equals("1010")) partyInfo.setParty_subservice("넷플릭스");
			else if(partyInfo.getParty_subservice().equals("1020")) partyInfo.setParty_subservice("왓챠");
			else if(partyInfo.getParty_subservice().equals("1030")) partyInfo.setParty_subservice("유튜브");
			else if(partyInfo.getParty_subservice().equals("1040")) partyInfo.setParty_subservice("웨이브");
			else if(partyInfo.getParty_subservice().equals("1050")) partyInfo.setParty_subservice("티빙");
			else if(partyInfo.getParty_subservice().equals("1080")) partyInfo.setParty_subservice("디즈니");
			else if(partyInfo.getParty_subservice().equals("2010")) partyInfo.setParty_subservice("리디북스");
			else if(partyInfo.getParty_subservice().equals("2020")) partyInfo.setParty_subservice("밀리의서재");
			else if(partyInfo.getParty_subservice().equals("2030")) partyInfo.setParty_subservice("YES24");
			else if(partyInfo.getParty_subservice().equals("2040")) partyInfo.setParty_subservice("스포티파이");
			else if(partyInfo.getParty_subservice().equals("3010")) partyInfo.setParty_subservice("닌텐도온라인");
			else if(partyInfo.getParty_subservice().equals("3050")) partyInfo.setParty_subservice("XBOX");
			else if(partyInfo.getParty_subservice().equals("6050")) partyInfo.setParty_subservice("멤버쉽");
			else if(partyInfo.getParty_subservice().equals("6010")) partyInfo.setParty_subservice("MSOffice");
			else partyInfo.setParty_subservice("기타");
		}
		
		return partyInfo;
	}
	
	public ArrayList<PartyMemberDTO> partyMember(String party_num) throws ParseException {
		ArrayList<PartyMemberDTO> members = mngDao.partyMember(party_num);
		for(PartyMemberDTO m : members) {
			m.setNick(notMyPartyNick(m.getNick()));
		}
		return members;
	}
	
	public ArrayList<PartyCommentDTO> partyComment(String party_num, String nick){
		ArrayList<PartyCommentDTO> comment = mngDao.partyComment(party_num);
		
		if(comment != null) {
			for(PartyCommentDTO c : comment) {
				System.out.println(c.getComment_private()); 
				if(c.getComment_private().equals("1")) {
					if(c.getComment_to_nick().equals(nick) || c.getNick().equals(nick)) {
						System.out.println("댓글정보" + c.getComment());
					}else {
						c.setComment("비밀댓글 입니다.");
						System.out.println("댓글정보" + c.getComment());
					}
				}
			}
		}
		
		return comment;
	}

	public int partyBillInsert(PartyBillDTO billDto) {
		int i = mngDao.partyBillInsert(billDto);
		return i;
		
	}

	public int partyDelete(String party_num) {
		int i = mngDao.partyDelete(party_num);
		return i;
	}

	public int partyClose(String party_num) {
		int i = mngDao.partyClose(party_num);
		return i;
	}

	public int insertComment(PartyCommentDTO comment) {
		int i = mngDao.insertComment(comment);
		return i;
		
	}

	
}
