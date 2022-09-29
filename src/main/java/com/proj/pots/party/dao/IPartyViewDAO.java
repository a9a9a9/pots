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
	
	PartyRegDTO selectParty(String party_num);
	
	void updateParty(String party_num);

	void insertPartyMember(PartyMemberDTO partyMember);
	
	ArrayList<PartyListDTO> createdParty(String id);  
	
	ArrayList<PartyListDTO> joinedParty(String id);
	
	PartyMemberDTO partyMember (String id);

	PartyRegDTO partyDay(String id);

	PartyMemberDTO myPartyDay(String id, String party_num);
	
	PartyListDTO partyAvailableChk(String party_num);
	
	ArrayList<PartyCommentDTO> comment(String id);
	
	int insertAccount(PartnerInfoDTO partner); 
	
	int updateAccount(PartnerInfoDTO partner);
	
	PartnerInfoDTO selectAccount(String id);
	
	PartyMemberDTO payMethod(PartyDTO my);
	
	void updatePoint(PartyMemberDTO partyMember);
	
	ArrayList<PartyMemberDTO> orderList(String id);

}
