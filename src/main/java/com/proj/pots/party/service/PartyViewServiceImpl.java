package com.proj.pots.party.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.proj.pots.member.dto.MemberDTO;
import com.proj.pots.membership.dao.IMemberDAO;
import com.proj.pots.party.dao.IPartyViewDAO;
import com.proj.pots.party.dto.PartnerInfoDTO;
import com.proj.pots.party.dto.PartyBillDTO;
import com.proj.pots.party.dto.PartyCommentDTO;
import com.proj.pots.party.dto.PartyParDTO;
import com.proj.pots.party.dto.PartyRegDTO;

@Service
public class PartyViewServiceImpl implements IPartyViewService{

	@Autowired IPartyViewDAO partyViewDao;
	@Autowired IMemberDAO memberDao;
	@Autowired private HttpSession session;
	
	@Override
	public ArrayList<PartyCommentDTO> comment(String id) {
		ArrayList<PartyCommentDTO> list = partyViewDao.comment(id);
		return list;  
	}
	
	@Override
	public MemberDTO memberInfo(String id) {
		MemberDTO member = memberDao.memberInfo(id);
		return member;
	}
	
	@Override
	public PartnerInfoDTO selectAccount(String id) {
		PartnerInfoDTO partner = partyViewDao.selectAccount(id); 
		return partner;
	} 
	
	@Override
	public PartyRegDTO selectParty(Integer party_num) {
		PartyRegDTO party = partyViewDao.selectParty(party_num); 
		return party;
	}
	
	@Override
	public String accountInsertProc(PartnerInfoDTO partner) {
		partner.setId(partner.getId());
		partner.setPersonal_num(partner.getPersonal_num()); 
		partner.setAccount_name(partner.getAccount_name());
		partner.setAccount_num(partner.getAccount_num());
		partyViewDao.insertAccount(partner);
		return "파트너 가입 완료";
	}
	
	@Override
	public String accountModifyProc(PartnerInfoDTO partner) {
		partner.setPersonal_num(partner.getPersonal_num()); 
		partner.setAccount_name(partner.getAccount_name());
		partner.setAccount_num(partner.getAccount_num());
		partyViewDao.updateAccount(partner);
		return "수정 완료";
	}

}
