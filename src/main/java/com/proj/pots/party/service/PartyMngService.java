package com.proj.pots.party.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.Map;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proj.pots.party.dao.IPartyMngDAO;
import com.proj.pots.party.dto.PartyListDTO;
import com.proj.pots.party.dto.PartyRegDTO;

@Service
public class PartyMngService {
	@Autowired IPartyMngDAO mngDao;

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
	
	// 
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
	public void insert(PartyRegDTO partyDto) {
		mngDao.insertParty(partyDto);
		System.out.println("wellThrough");
		
	}
	
	public ArrayList<PartyListDTO> partySearch(Map<String, String> map) throws ParseException {
		ArrayList<PartyListDTO> list = mngDao.partySearch(map);
		if(list != null)
			list = listSetter(list);
		System.out.println("List  " + list);
		
		return list;
		
	}
	
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
			
			if(p.getParty_subservice().equals("1010")) p.setParty_subservice("#넷플릭스");
			else if(p.getParty_subservice().equals("1020")) p.setParty_subservice("#왓챠");
			else if(p.getParty_subservice().equals("1030")) p.setParty_subservice("#유튜브");
			else if(p.getParty_subservice().equals("1040")) p.setParty_subservice("#웨이브");
			else if(p.getParty_subservice().equals("1050")) p.setParty_subservice("#티빙");
			else if(p.getParty_subservice().equals("1080")) p.setParty_subservice("#디즈니");
			else if(p.getParty_subservice().equals("2010")) p.setParty_subservice("#리디북스");
			else if(p.getParty_subservice().equals("2020")) p.setParty_subservice("#밀리의서재");
			else if(p.getParty_subservice().equals("2030")) p.setParty_subservice("#YES24");
			else if(p.getParty_subservice().equals("2040")) p.setParty_subservice("#스포티파이");
			else if(p.getParty_subservice().equals("3010")) p.setParty_subservice("#닌텐도온라인");
			else if(p.getParty_subservice().equals("3050")) p.setParty_subservice("#XBOX");
			else if(p.getParty_subservice().equals("6050")) p.setParty_subservice("#멤버쉽");
			else if(p.getParty_subservice().equals("6010")) p.setParty_subservice("#MSOffice");
			else p.setParty_subservice("#기타");
		}
		
		return list;
	}


}
