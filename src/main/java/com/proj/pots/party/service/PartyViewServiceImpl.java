package com.proj.pots.party.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.proj.pots.member.dto.MemberDTO;
import com.proj.pots.membership.dao.IMemberDAO;
import com.proj.pots.party.dao.IPartyViewDAO;
import com.proj.pots.party.dto.PartnerInfoDTO;
import com.proj.pots.party.dto.PartyCommentDTO;

@Service
public class PartyViewServiceImpl implements IPartyViewService{

	@Autowired IPartyViewDAO partyViewDao;
	@Autowired IMemberDAO memberDao;
	
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
	
//	@Override
//		public PartnerInfoDTO updateAccount(String id) {
//		PartnerInfoDTO partner = partyViewDao.updateAccount(id);
//		return partner;
//	}

}
