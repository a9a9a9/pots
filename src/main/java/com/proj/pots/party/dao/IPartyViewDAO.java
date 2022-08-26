package com.proj.pots.party.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.proj.pots.member.dto.MemberDTO;
import com.proj.pots.party.dto.PartnerInfoDTO;
import com.proj.pots.party.dto.PartyBillDTO;
import com.proj.pots.party.dto.PartyCommentDTO;
import com.proj.pots.party.dto.PartyDTO;
import com.proj.pots.party.dto.PartyListDTO;
import com.proj.pots.party.dto.PartyMemberDTO;
import com.proj.pots.party.dto.PartyParDTO;
import com.proj.pots.party.dto.PartyRegDTO;

@Mapper
public interface IPartyViewDAO {
	
	ArrayList<PartyCommentDTO> comment(String id);
	
	PartnerInfoDTO selectAccount(String id);
	
	PartyRegDTO selectParty(String party_num);
	
	PartyMemberDTO partyMember (String id);
	
	PartyMemberDTO myPartyDay(String id, String party_num);
	
	PartyMemberDTO payMethod(PartyDTO my);
		
	int insertAccount(PartnerInfoDTO partner); 
		
	int updateAccount(PartnerInfoDTO partner);
	
	void insertPartyMember(PartyMemberDTO partyMember);

	PartyRegDTO partyDay(String id);
	
	PartyListDTO partyAvailableChk(String party_num);

	void updateParty(String party_num);
	
	void updatePoint(PartyMemberDTO partyMember);
	
	ArrayList<PartyListDTO> createdParty(String id);  
	
	ArrayList<PartyListDTO> joinedParty(String id);
	
	ArrayList<PartyMemberDTO> orderList(String id);



}
