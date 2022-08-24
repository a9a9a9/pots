package com.proj.pots.party;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.proj.pots.membership.service.MemberService;
import com.proj.pots.party.dto.PageVO;
import com.proj.pots.party.dto.PartnerInfoDTO;
import com.proj.pots.party.dto.PartyCommentDTO;
import com.proj.pots.party.dto.PartyMemberDTO;
import com.proj.pots.party.service.IPartyViewService;

@Controller
public class PartyController { 
	
	@Autowired IPartyViewService service;
	@Autowired MemberService memberService;
	@Autowired HttpSession session;

	//partyAdmin 폴더 파일
		@RequestMapping(value = "/partyIndex")
		public String partyIndex() {
			return "partyAdmin/partyIndex";
		}
		
		@RequestMapping(value = "/partnerRegister")
		public String partnerRegister(Model model, String id) {
			id = (String)session.getAttribute("id");   
			model.addAttribute("member", memberService.memberInfo(id));
			return "partyAdmin/partnerRegister";
		}
		
		@RequestMapping(value = "accountInsertProc")
		public String accountInsertProc(PartnerInfoDTO partner, RedirectAttributes ra) {
			String id = (String)session.getAttribute("id");   
			partner.setId(id); 
			String msg = service.accountInsertProc(partner); 
			if(msg.equals("실패")) {
				msg = "<script>alert('파트너 등록에 실패했습니다.')</script>";
				ra.addFlashAttribute("msg", msg);
				return "redirect:/partnerRegister";
			}else {
				session.setAttribute("partner", "true");
				session.setAttribute("account_num", partner.getAccount_num());
				session.setAttribute("account_name", partner.getAccount_name());
				return "redirect:/partyList";
			}
					
		}

		@RequestMapping(value = "/partyMyInfo")
		public String partyMyInfo(Model model, String id) {
			return "partyAdmin/partyMyInfo";
		}
		
		@RequestMapping(value = "accountModifyProc") 
		public String accountModifyProc(Model model, PartnerInfoDTO partner, RedirectAttributes ra) { 
			System.out.println(partner.getId() + partner.getAccount_name() + partner.getAccount_num() + partner.getPersonal_num());
			String msg = service.accountModifyProc(partner);  
			String personal_num = (String) session.getAttribute("personal_num");
			if(msg.equals("실패") || !partner.getPersonal_num().equals(personal_num) ) {
				msg = "<script>alert('정보 수정에 실패했습니다.')</script>";
				ra.addFlashAttribute("msg", msg);
				return "redirect:/partyMyInfo";
			}else {
				session.setAttribute("account_name", partner.getAccount_name());
				session.setAttribute("account_num", partner.getAccount_num());
				session.setAttribute("personal_num", partner.getPersonal_num());
				msg = "<script>alert('정보 수정이 완료되었습니다.')</script>";
				ra.addFlashAttribute("msg", msg);
				return "redirect:/partyMyInfo";
			}
		} 
		
		@RequestMapping(value = "/partyCommentList")
		public String partyCommentList(Model model,String nowPage, PageVO vo) {
			String id = (String)session.getAttribute("id");
			//String id = "admin";
			ArrayList<PartyCommentDTO> list =service.comment(id);
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
			
			return "partyAdmin/partyCommentList";
		}
		
		
		@RequestMapping(value = "/partyOrder")
		public String partyOrder(Model model, Integer party_num, String id) {
			party_num = 1;
			id = "user55";
			model.addAttribute("member", memberService.memberInfo(id));
			model.addAttribute("party", service.selectParty(party_num));
			model.addAttribute("myDay", service.partyDay(party_num));
			return "partyRecruit/partyOrder";
		}
		
		@RequestMapping(value = "/partyOrderInfo")
		public String partyOrderInfo(Model model, Integer party_num, String id) {
			party_num = 1;
			id = "user55";
			model.addAttribute("member", memberService.memberInfo(id));
			model.addAttribute("party", service.selectParty(party_num));
			model.addAttribute("end", service.endDay(party_num));
			model.addAttribute("myDay", service.myPartyDay(id, party_num));
			model.addAttribute("partyMember", service.partyMember(id));
			model.addAttribute("method", service.payMethod(id));
			return "partyRecruit/partyOrderInfo";
		}

		@RequestMapping(value = "partyMemberInsertProc")
		public String partyMemberInsertProc(PartyMemberDTO partyMember, Model model, RedirectAttributes ra) {
			String id="user55";
			partyMember.setId(id);
			int party_num = partyMember.getParty_num();
			String msg = service.partyMemberInsertProc(partyMember, party_num);
			if(msg.equals("신청불가")) {
				ra.addFlashAttribute("msg", "<script>alert('이미 모집이 완료된 파티입니다.')</script>");
				return "redirect:/";
			} 
			return "forward:/index?formpath=partyOrderInfo";
		}
		
		
}
