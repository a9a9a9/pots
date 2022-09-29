package com.proj.pots.party.service;

import java.util.ArrayList;

import com.proj.pots.member.dto.MemberDTO;
import com.proj.pots.party.dto.PartnerInfoDTO;
import com.proj.pots.party.dto.PartyCommentDTO;
import com.proj.pots.party.dto.PartyDTO;
import com.proj.pots.party.dto.PartyListDTO;
import com.proj.pots.party.dto.PartyMemberDTO;
import com.proj.pots.party.dto.PartyRegDTO;

public interface IPartyViewService { 

	PartyRegDTO selectParty(String party_num);
	
	public String partyMemberInsertProc(PartyMemberDTO partyMember, String party_num);
	
	ArrayList<PartyListDTO> createdParty(String id);
	
	ArrayList<PartyListDTO> joinedParty(String id);
	
	PartyMemberDTO partyMember(String id);
	
	PartyRegDTO partyDay(String party_num);
	
	PartyMemberDTO myPartyDay(String id, String party_num);
	
	ArrayList<PartyCommentDTO> comment(String id); 

	public String accountInsertProc(PartnerInfoDTO partner);

	public String accountModifyProc(PartnerInfoDTO partner);
	
	PartnerInfoDTO selectAccount(String id);
	 
	PartyMemberDTO payMethod(PartyDTO my); 

	ArrayList<PartyMemberDTO> orderList(String id);

	public MemberDTO memberInfo(String id); 
	
}
