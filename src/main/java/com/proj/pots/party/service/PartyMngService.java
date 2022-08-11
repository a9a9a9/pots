package com.proj.pots.party.service;

import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proj.pots.party.dao.IPartyMngDAO;
import com.proj.pots.party.dto.PartyRegDTO;

@Service
public class PartyMngService {
	@Autowired IPartyMngDAO mngDao;

	public String check_day(String party_start, String party_end) throws ParseException {
		Date format1 = new SimpleDateFormat("yyyy-MM-dd").parse(party_start);
		Date format2 = new SimpleDateFormat("yyyy-MM-dd").parse( party_end);
		
		long days = (format2.getTime() - format1.getTime()) / (1000*24*60*60);
		
		String count = Long.toString(days);
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

	public void insert(PartyRegDTO partyDto) {
		mngDao.insertParty(partyDto);
		System.out.println("wellThrough");
		
	}
	
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

}
