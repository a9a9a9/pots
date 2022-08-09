package com.proj.pots.party.service;

import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.springframework.stereotype.Service;

@Service
public class PartyMngService {

	public String check_day(String startDate, String endDate) throws ParseException {
		Date format1 = new SimpleDateFormat("yyyy-MM-dd").parse(startDate);
		Date format2 = new SimpleDateFormat("yyyy-MM-dd").parse(endDate);
		
		long days = (format2.getTime() - format1.getTime()) / (1000*24*60*60);
		
		String count = Long.toString(days);
		System.out.println(count + days);
		
		return count;
	}

	public String check_cash(String startDate, String endDate, String price, String num) throws ParseException{
		String count = check_day(startDate, endDate);
		int count_tmp = Integer.parseInt(count);
		int price_tmp = Integer.parseInt(price);
		int num_tmp = Integer.parseInt(num);
		
		int total = count_tmp * price_tmp * num_tmp;
		String income = String.valueOf(total);
		return income;
	}

}
