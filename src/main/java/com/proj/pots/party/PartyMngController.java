package com.proj.pots.party;

import java.text.ParseException;
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
	
	@RequestMapping
	public String ptChk() {
		String partner = (String) session.getAttribute("partner");
		System.out.println("파트너여부" + partner);
		if(partner == null || partner == "false")
			return "1";
		
		return null;
	}
	
	
	@RequestMapping(value = "/partyJoinList")
	public String partyJoinList(Model model, String nowPage, PageVO vo) throws ParseException {
		// 리스트 가져오기
		//String id = "admin";
		if(ptChk() != null) return "redirect:/";
		String id = (String) session.getAttribute("id");
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
		
		if(ptChk() != null) return "redirect:/";
		// 리스트 가져오기
		//String id = "admin";
		String id = (String) session.getAttribute("id");
		System.out.println("id" + id);
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
		
		if(ptChk() != null) return "redirect:/";
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
		String id = (String) session.getAttribute("id");
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
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
		if(ptChk() != null) return "redirect:/";
		return "partyAdmin/partyCancelReq";
	}
	
	@RequestMapping(value = "/partyCancelList")
	public String partyCancelList() {
		if(ptChk() != null) return "redirect:/";
		return "partyAdmin/partyCancelList";
	}
	
	// 시험 페이지
	@RequestMapping(value = "/partytest")
	public String partytest() {
		if(ptChk() != null) return "redirect:/";
		return "partyAdmin/partytest";
	}
	
	//파티 선택 삭제
	@ResponseBody
	@RequestMapping(value = "/deleteproc", method=RequestMethod.POST)
    public String deleteproc (@RequestBody ArrayList<String> array) {
		if(ptChk() != null) return "redirect:/";
        if(array.size() != 0) {
        	for(String s : array) {
        		int i = mngSvc.partyDelete(s);
        		if(i != 1) return "-1";
        	}
        }
        return "1";
    }
	
	//파티 선택 마감
	@ResponseBody
	@RequestMapping(value = "/closeproc", method=RequestMethod.POST)
    public String closeproc (@RequestBody ArrayList<String> array) {
		if(ptChk() != null) return "redirect:/";
        if(array.size() != 0) {
        	for(String s : array) {
        		int i = mngSvc.partyClose(s);
        		if(i != 1) return "-1";
        	}
        }
        return "1";
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
		if(ptChk() != null) return "redirect:/";
		if(session.getAttribute("id") == null) {
			return "redirect:/index?formpath=login";
		}
		return "partyAdmin/partyCreate";
	}
	
	// 파티 생성 등록
	@PostMapping(value = "partyReg")
	public String partyReg(PartyRegDTO partyDto, Model model) {
		if(ptChk() != null) return "redirect:/";
		if(partyDto.getParty_adult() == null)
			partyDto.setParty_adult("0");
		
		partyDto.setParty_available("1");
		
		String id = (String) session.getAttribute("id");
		partyDto.setId(id);
		
		int insertChk = mngSvc.insert(partyDto);
		if(insertChk == -1) {
			model.addAttribute("msg", "<script>alert('파티를 생성하지 못했습니다')</script>");
			return "partyAdmin/partyCreate";
		}
	
		return "redirect:/index?formpath=partyMain?party_num="+ insertChk;
	}

	@RequestMapping(value="partySearch")
	public String partySearch
			(String sel1, String sel2, String searchWord, Model model, String nowPage, PageVO vo) 
				throws ParseException {
		if(ptChk() != null) return "redirect:/";
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
	
	@RequestMapping(value="/partyMain") 
	public String partyMain(String party_num, Model model) throws ParseException {
		//party_num = "1";
		
		
		//파티 정보 불러오기
		PartyListDTO info = mngSvc.partyInfo(party_num);
		model.addAttribute("info", info);
		//int total = info.getParty_member();
		
		// 파티 멤버 리스트 불러오기
		int joined = 0;
		ArrayList<PartyMemberDTO> members = mngSvc.partyMember(party_num);
		if(members != null) {
			joined = members.size();
			if(members.size() == info.getParty_left_member()) {
				joined = 100;
			}
		}
		
		
		String memberCheck = "";
		String id = (String) session.getAttribute("id");
		if(id != null) {
			for(PartyMemberDTO m : members) {
				if(id.equals(m.getNick()) || id.equals(info.getNick())) {
					memberCheck = "checked";
				}
			}
		}else {
			for(PartyMemberDTO m : members) {
				m.setNick(mngSvc.notMyPartyNick(m.getNick()));
			}
		}
		
		
		
		model.addAttribute("memberChk", memberCheck);
		model.addAttribute("joined", joined);
		model.addAttribute("list", members);
		return "partyRecruit/partyMain";
		
	}

	@RequestMapping(value = "/partyBill")
	public String partyBill(Model model, String nowPage, PageVO vo) {
		if(ptChk() != null) return "redirect:/";
		//id = "admin";
		String id = (String) session.getAttribute("id");
		ArrayList<PartyBillDTO> bill = mngSvc.bill(id);
		Map<String, Object> billMap = mngSvc.billMap(id);
		System.out.println(bill);
		if(bill != null) {
			int total = bill.size();			
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
		}
		
		model.addAttribute("bill", bill);
		model.addAttribute("billMap", billMap);
		return "partyAdmin/partyBill";
	}
	
	@RequestMapping(value="/billProc")
	public String billProc(String pp_amount, Model model) {
		if(ptChk() != null) return "redirect:/";
		model.addAttribute("money", pp_amount);
		return "partyAdmin/partyBillCheck";
	}
	
	@RequestMapping(value="/BillComplete")
	public String billComplete(int bill_charge) {
		if(ptChk() != null) return "redirect:/";
		PartyBillDTO billDto = new PartyBillDTO();
		billDto.setBill_pay(bill_charge);
		//String id = (String) session.getAttribute("id");
		String id = "admin";
		billDto.setId(id);
		billDto.setBill_charge(bill_charge);
		mngSvc.partyBillInsert(billDto);
		return "partyAdmin/billComplete";
	}
	


}
