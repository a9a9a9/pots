package com.proj.pots.main.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.proj.pots.main.dao.IPartyPageDAO;
import com.proj.pots.party.dto.PartyListDTO;

@Service
public class PartyPageService {
	@Autowired IPartyPageDAO partyDao;
	@Autowired HttpSession session;
	
	public void listView(Model model, int currentPage, String sub, HttpServletRequest req) throws ParseException {
		
		int totalCount = partyDao.listCount(sub);
		int pageBlock = 8;
		int end = currentPage * pageBlock;
//		int begin = end+1 - pageBlock;
		int begin = 1;
		
		ArrayList<PartyListDTO> list = partyDao.videoProc(begin, end, sub);
		for(PartyListDTO p : list) {
			//주제 이름 변경
			if(p.getParty_service().equals("10")) p.setParty_service("영상");
			else if (p.getParty_service().equals("20")) p.setParty_service("도서/음악");
			else if (p.getParty_service().equals("30")) p.setParty_service("게임");
			else p.setParty_service("기타");
			
			if(p.getParty_subservice().equals("1010")) p.setParty_subservice("넷플릭스");
			else if(p.getParty_subservice().equals("1020")) p.setParty_subservice("왓챠");
			else if(p.getParty_subservice().equals("1030")) p.setParty_subservice("유튜브");
			else if(p.getParty_subservice().equals("1040")) p.setParty_subservice("웨이브");
			else if(p.getParty_subservice().equals("1050")) p.setParty_subservice("티빙");
			else if(p.getParty_subservice().equals("1080")) p.setParty_subservice("디즈니");
			else if(p.getParty_subservice().equals("2010")) p.setParty_subservice("리디북스");
			else if(p.getParty_subservice().equals("2020")) p.setParty_subservice("밀리의서재");
			else if(p.getParty_subservice().equals("2030")) p.setParty_subservice("YES24");
			else if(p.getParty_subservice().equals("2040")) p.setParty_subservice("스포티파이");
			else if(p.getParty_subservice().equals("3010")) p.setParty_subservice("닌텐도온라인");
			else if(p.getParty_subservice().equals("3050")) p.setParty_subservice("XBOX");
			else if(p.getParty_subservice().equals("6050")) p.setParty_subservice("멤버쉽");
			else if(p.getParty_subservice().equals("6010")) p.setParty_subservice("MSOffice");
			else p.setParty_subservice("기타");
			
			//오늘부터 남은 일수
			String party_left_date = check_today(p.getParty_end());
			p.setParty_left_date(party_left_date);
			
			//남은 가격
			int left = Integer.parseInt(party_left_date);
			int charge = p.getParty_charge();
			String party_total_charge = String.format("%,d",left*charge);
			p.setParty_total_charge(party_total_charge);
			
			//아이콘 표현 한도 6설정
			if(p.getParty_now_member() > 6) p.setParty_now_member(6);
			if(p.getParty_member() > 6) p.setParty_member(6);
		}
		String url = req.getContextPath() + "/videoProc?currentPage=";
		model.addAttribute("page", pageNavi(currentPage, pageBlock, totalCount, url));
		model.addAttribute("list", list);
		if(currentPage == 1) {
			model.addAttribute("pageNo", "1");
		}else {
			model.addAttribute("pageNo", "2");
		}
	}
	public static String pageNavi(int currentPage, int pageBlock, int totalCount, String url) {
		int blockCnt = totalCount / pageBlock;
		
		if(totalCount % pageBlock > 0) blockCnt++;
		
		String result = "";
		int afterPage = currentPage+1;
		
		if(afterPage > blockCnt) {
			String msg = "마지막 페이지";
			return msg;
		}
		result += url+afterPage;
		
		return result;
	}
	
	public String check_total_charge(String party_start, String party_end, int party_charge) throws ParseException{
		String count = check_day( party_start,  party_end);
		int count_tmp = Integer.parseInt(count);
		int price_tmp = party_charge;
		
		int total = count_tmp * price_tmp ;
		
		String income = String.valueOf(total);
		return income;
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
		
		return count;
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
			
			return count;
		}
}
