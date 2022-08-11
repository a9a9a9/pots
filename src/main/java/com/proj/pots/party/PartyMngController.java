package com.proj.pots.party;

import java.text.ParseException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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
	@Autowired HttpSession session;
	
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
	    String party_start = map.get("i_start_day");
	    String party_end = map.get("i_pt_day");
	    String party_charge = map.get("i_it_price");
	    String party_member = map.get("i_it_stock_qty");
	   // System.out.println("print**************\n" + startDate + endDate + price + num);
	    if(party_start == null || party_end == null || party_charge== null) {
	    	map.put("i_cash_c", "0");
	    	if(party_member == null) 
	    		map.put("sp_count", "0");
	    	return map;
	    }
	    if(party_member == null) {
	    	map.put("msg", "인원수 불명확");
	    }
	    
	    String msg = mngSvc.check_cash(party_start, party_end, party_charge, party_member);
	    map.put("msg", msg);
	    return map;
	}
	

	@GetMapping(value = "/partyCreate")
	public String partyCreate() {
		return "partyAdmin/partyCreate";
	}
	
	@PostMapping(value = "partyReg")
	public String partyReg(PartyRegDTO partyDto) {
		// 등록 날짜 및 시간 구하기
		LocalDateTime     nowDate   = LocalDateTime.now();
        DateTimeFormatter formatter = null;
        String            strDate   = "";
        try {
            formatter = DateTimeFormatter.ofPattern( "yyyy-MM-dd HH:mm:ss" );
        } catch ( Exception e ) {
            formatter = DateTimeFormatter.ofPattern( "yyyy-MM-dd HH:mm:ss" );
        }
        strDate = nowDate.format( formatter );
        
        //Dto 정보 입력
		partyDto.setParty_regdate(strDate);
		partyDto.setParty_available("1");
		
		mngSvc.insert(partyDto);
		return "partyAdmin/partyList";
	}

	
	

}
