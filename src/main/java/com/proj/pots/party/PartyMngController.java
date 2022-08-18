package com.proj.pots.party;

import java.text.ParseException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.proj.pots.party.dto.PageVO;
import com.proj.pots.party.dto.PartyBillDTO;
import com.proj.pots.party.dto.PartyListDTO;
import com.proj.pots.party.dto.PartyMemberDTO;
import com.proj.pots.party.dto.PartyRegDTO;
import com.proj.pots.party.service.PartyMngService;


@Controller
public class PartyMngController {
	@Autowired private PartyMngService mngSvc;
	@Autowired HttpSession session;
	
	@RequestMapping(value = "/partyJoinList")
	public String partyJoinList(Model model, String nowPage, PageVO vo) throws ParseException {
		// 리스트 가져오기
		String id = "admin";
		// String id = (String) session.getAtrribute("id");
		ArrayList<PartyMemberDTO> list = mngSvc.partyJoinList(id);
		
		// 페이지 
		int total = list.size();			
		int cntPerPage = 3;
		
		if (nowPage == null) {
			nowPage = "1";
		}else {
			int nowInt = Integer.parseInt(nowPage);
			if(nowInt < 1)
				nowPage = "1";
		}
	
		vo = new PageVO(total, Integer.parseInt(nowPage), cntPerPage);
		
		
		model.addAttribute("paging", vo);
		
		model.addAttribute("list", list);
		return "partyAdmin/partyJoinList";
	}
	
	@RequestMapping(value = "/partyList")
	public String partyList(Model model, String nowPage, PageVO vo) throws ParseException {
		// 리스트 가져오기
		String id = "admin";
		// String id = (String) session.getAtrribute("id");
		ArrayList<PartyListDTO> list = mngSvc.partyList(id);
		System.out.println(list);
		// 페이지 
		int total = list.size();			
		int cntPerPage = 2;
		
		if (nowPage == null) {
			nowPage = "1";
		}else {
			int nowInt = Integer.parseInt(nowPage);
			if(nowInt < 1)
				nowPage = "1";
		}
	
		vo = new PageVO(total, Integer.parseInt(nowPage), cntPerPage);
		
		
		model.addAttribute("paging", vo);
		model.addAttribute("list", list);
		
		return "partyAdmin/partyList";
	}
	
	@RequestMapping(value="joinSearch")
	public String joinSearch(String fr_date, String to_date, String sel, String searchWord, Model model, PageVO vo, String nowPage) throws ParseException {
		System.out.println(fr_date + " " + to_date + " "  + sel + " "  + searchWord);
		
		
		if(fr_date.equals("") || to_date.equals("")) {
			if(fr_date.equals("") && to_date.equals("")) {
				if(sel.equals("") && searchWord.equals("")) {
					return"redirect:/partyJoinList";
				}
			}else {
				return"redirect:/partyJoinList";
			}
		}
		
		//String id = "admin";
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", "admin");
		map.put("keyword", searchWord);
		map.put("start", fr_date);
		map.put("end", to_date);
		
		if(!sel.equals("")) {
			if(sel.length() == 2) {
				map.put("sel1", "ser");
				map.put("keynum", sel);
			}else if(sel.length() == 4) {
				map.put("sel1", "sub");
				map.put("keynum", sel);
			}
		}
		
		
		ArrayList<PartyMemberDTO> list = mngSvc.joinSearch(map);
		
		// 페이지 
		int total = list.size();			
		int cntPerPage = 10;
		
		if (nowPage == null) {
			nowPage = "1";
		}else {
			int nowInt = Integer.parseInt(nowPage);
			if(nowInt < 1)
				nowPage = "1";
		}
	
		vo = new PageVO(total, Integer.parseInt(nowPage), cntPerPage);
		
		
		model.addAttribute("paging", vo);
		
		model.addAttribute("list", list);
		return "partyAdmin/partyJoinList";
	}
	
	@RequestMapping(value = "/partyCancelReq")
	public String partyCancelReq() {
		return "partyAdmin/partyCancelReq";
	}
	
	@RequestMapping(value = "/partyCancelList")
	public String partyCancelList() {
		return "partyAdmin/partyCancelList";
	}
	
	// 시험 페이지
	@RequestMapping(value = "/partytest")
	public String partytest() {
		return "partyAdmin/partytest";
	}
	
	// 파티 생성 시 날짜일수 확인 (ajax)
	@ResponseBody
	@RequestMapping(value="check_day", method=RequestMethod.POST)
	public Map<String,String> check_day(@RequestBody Map<String,String> map ) throws ParseException{
	    String startDate = map.get("start_pt_day");
	    String endDate = map.get("end_pt_day");
	    String msg = mngSvc.check_day(startDate, endDate);
	    map.put("msg", msg);
	    return map;
	}
	
	// 파티 생성 시 금액 확인 (ajax)
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
	
	// 파티 생성 페이지
	@GetMapping(value = "/partyCreate")
	public String partyCreate() {
		return "partyAdmin/partyCreate";
	}
	
	// 파티 생성 등록
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

	@RequestMapping(value="partySearch")
	public String partySearch
			(String sel1, String sel2, String searchWord, Model model, String nowPage, PageVO vo) 
				throws ParseException {
		
		System.out.println("sel1: " +sel1 + " sel2: " + sel2 + " sw: " + searchWord);
		
		Map<String, String> searchMap = new HashMap<String, String>();
		searchMap.put("id", "admin");
		//searchMap.put("id", (String) session.getAttribute("id"));
		
		if(!sel1.equals("")) {
			if(sel1.length() == 2) {
				searchMap.put("sel1", "ser");
				searchMap.put("keynum", sel1);
			}else if(sel1.length() == 4) {
				searchMap.put("sel1", "sub");
				searchMap.put("keynum", sel1);
			}
				
		}
		else {
			if(searchWord == null)
			return "redirect:/partyList";
		}
		
		
		if(sel2 != null) searchMap.put("sel2", sel2);
		else searchMap.put("sel2", "id");
		
		if(searchWord != null)
			searchMap.put("keyword", searchWord);
			
		System.out.println(searchMap.get("keynum") + " " + searchMap.get("sel2") + " " + searchMap.get("keyword"));	
		
		ArrayList<PartyListDTO> list = mngSvc.partySearch(searchMap);
		
		// 페이징
		int total = list.size();			
		int cntPerPage = 2;
		
		if (nowPage == null) {
			nowPage = "1";
		}else {
			int nowInt = Integer.parseInt(nowPage);
			if(nowInt < 1)
				nowPage = "1";
		}
	
		vo = new PageVO(total, Integer.parseInt(nowPage), cntPerPage);
		
		
		model.addAttribute("paging", vo);
				
				
		model.addAttribute("list", list);
		return "partyAdmin/partyList";
		
	}
	
<<<<<<< Updated upstream
	@RequestMapping(value="/partyMain") 
	public String partyMain(String party_num, Model model) throws ParseException {
		party_num = "1";
		int joined = 0;
		
		PartyListDTO info = mngSvc.partyInfo(party_num);
		model.addAttribute("info", info);
		//int total = info.getParty_member();
		System.out.println("model1 complete");
		
		ArrayList<PartyMemberDTO> members = mngSvc.partyMember(party_num);
		model.addAttribute("list", members);
		System.out.println("model2 complete");
		
		
		if(members != null) {
			joined = members.size();
			if(members.size() == info.getParty_left_member()) {
				joined = 100;
			}
		}
		model.addAttribute("joined", joined);
		
//		String memberCheck = "";
//		String id = (String) session.getAttribute("id");
//		if(id.equals(info.getNick())) memberCheck = "checked";
//		for(PartyMemberDTO m : members) {
//			if(id.equals(m.getNick())) memberCheck = "checked";
//		}
		model.addAttribute("memberChk", "");
		
		
		return "partyRecruit/partyMain";
		
	}
=======
	@RequestMapping(value = "/partyBill")
	public String partyBill(Model model, String id, String nowPage, PageVO vo) {
		id = "admin";
		ArrayList<PartyBillDTO> bill = mngSvc.bill(id);
		int total = bill.size();			
		int cntPerPage = 2;
		
		if (nowPage == null) {
			nowPage = "1";
		}else {
			int nowInt = Integer.parseInt(nowPage);
			if(nowInt < 1)
				nowPage = "1";
		}
	
		vo = new PageVO(total, Integer.parseInt(nowPage), cntPerPage);
		model.addAttribute("paging", vo);
		model.addAttribute("bill", bill);
		model.addAttribute("partner", mngSvc.selectAccount(id));
		return "partyAdmin/partyBill";
	}
	
>>>>>>> Stashed changes
	

}
