package com.proj.pots.party.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.proj.pots.member.dto.MemberDTO;
import com.proj.pots.party.dto.PartnerInfoDTO;
import com.proj.pots.party.dto.PartyBillDTO;
import com.proj.pots.party.dto.PartyCommentDTO;
import com.proj.pots.party.dto.PartyListDTO;
import com.proj.pots.party.dto.PartyMemberDTO;
import com.proj.pots.party.dto.PartyParDTO;
import com.proj.pots.party.dto.PartyRegDTO;

@Mapper
public interface IPartyViewDAO {
	
	ArrayList<PartyCommentDTO> comment(String id);
	
	PartnerInfoDTO selectAccount(String id);
	
	PartyRegDTO selectParty(int party_num);
		
	void insertAccount(PartnerInfoDTO partner); 
		
	void updateAccount(PartnerInfoDTO partner);
	
	void insertPartyMember(PartyMemberDTO partyMember);

	PartyRegDTO partyDay(Integer party_num); 
	
	PartyListDTO partyAvailableChk(int party_num);

	void updateParty(int party_num);
}
