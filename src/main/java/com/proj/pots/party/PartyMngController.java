package com.proj.pots.party;

import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.proj.pots.party.dto.PartyRegDTO;
import com.proj.pots.party.service.PartyMngService;


@Controller
public class PartyMngController {
	@Autowired private PartyMngService mngSvc;
	
	@RequestMapping(value = "/partyJoinList")
	public String partyJoinList() {
		return "partyAdmin/partyJoinList";
	}
	
	@RequestMapping(value = "/partyList")
	public String partyList() {
		return "partyAdmin/partyList";
	}
	
	@RequestMapping(value = "/partyCancelReq")
	public String partyCancelReq() {
		return "partyAdmin/partyCancelReq";
	}
	
	@RequestMapping(value = "/partyCancelList")
	public String partyCancelList() {
		return "partyAdmin/partyCancelList";
	}
	
	@RequestMapping(value = "/partytest")
	public String partytest() {
		return "partyAdmin/partytest";
	}
	
	@PostMapping(value = "/partyReg")
	public String partyReg(PartyRegDTO partyDto) {
		System.out.println(partyDto.getParty_charge());
		System.out.println(partyDto.getParty_start());
		return "partyAdmin/partyCreate";
	}
	
	@ResponseBody
	@RequestMapping(value="check_day", method=RequestMethod.POST)
	public Map<String,String> check_day(@RequestBody Map<String,String> map ) throws ParseException{
	    String startDate = map.get("start_pt_day");
	    String endDate = map.get("end_pt_day");
	    String msg = mngSvc.check_day(startDate, endDate);
	    map.put("msg", msg);
	    return map;
	}
	
	@ResponseBody
	@RequestMapping(value="check_cash", method=RequestMethod.POST)
	public Map<String,String> check_cash(@RequestBody Map<String,String> map ) throws ParseException{
	    String startDate = map.get("i_start_day");
	    String endDate = map.get("i_pt_day");
	    String price = map.get("i_it_price");
	    String num = map.get("i_it_stock_qty");
	    System.out.println("print**************\n" + startDate + endDate + price + num);
	    if(startDate == null || endDate == null || price == null) {
	    	map.put("i_cash_c", "0");
	    	if(num == null) map.put("sp_count", "0");
	    	return map;
	    }
	    if(num == null) {
	    	map.put("msg", "인원수가 선택불가");
	    }
	    
	    
	    String msg = mngSvc.check_cash(startDate, endDate, price, num);
	    map.put("msg", msg);
	    return map;
	}

	
	

}
