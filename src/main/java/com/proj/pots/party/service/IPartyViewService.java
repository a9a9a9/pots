package com.proj.pots.party.service;

import java.util.ArrayList;

import com.proj.pots.member.dto.MemberDTO;
import com.proj.pots.party.dto.PartnerInfoDTO;
import com.proj.pots.party.dto.PartyCommentDTO;
import com.proj.pots.party.dto.PartyListDTO;
import com.proj.pots.party.dto.PartyMemberDTO;
import com.proj.pots.party.dto.PartyRegDTO;

public interface IPartyViewService { 
	
	public ArrayList<PartyCommentDTO> comment(String id); 
	
	public MemberDTO memberInfo(String id); 
 
	PartnerInfoDTO selectAccount(String id);
		
	PartyRegDTO selectParty(String party_num);
	
	PartyMemberDTO partyMember(String id);
	
	PartyRegDTO endDay(String party_num);
	
	PartyRegDTO partyDay(String party_num);
	
	PartyRegDTO myPartyDay(String id, String party_num);
	 
	PartyMemberDTO payMethod(String id); 
		
	public String accountInsertProc(PartnerInfoDTO partner);

	public String accountModifyProc(PartnerInfoDTO partner);
	
	public String partyMemberInsertProc(PartyMemberDTO partyMember, Integer party_num);

	ArrayList<PartyListDTO> createdParty(String id);
	
	ArrayList<PartyListDTO> joinedParty(String id);

	ArrayList<PartyMemberDTO> orderList(String id);
	
}
