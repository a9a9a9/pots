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
	
	public ArrayList<PartyCommentDTO> comment(String id); 
	
	public MemberDTO memberInfo(String id); 
 
	PartnerInfoDTO selectAccount(String id);
		
	PartyRegDTO selectParty(String party_num);
	
	PartyMemberDTO partyMember(String id);
	
	PartyRegDTO partyDay(String party_num);
	
	PartyMemberDTO myPartyDay(String id, String party_num);
	 
	PartyMemberDTO payMethod(PartyDTO my); 
		
	public String accountInsertProc(PartnerInfoDTO partner);

	public String accountModifyProc(PartnerInfoDTO partner);
	
	ArrayList<PartyListDTO> createdParty(String id);
	
	ArrayList<PartyListDTO> joinedParty(String id);

	ArrayList<PartyMemberDTO> orderList(String id);

	public String partyMemberInsertProc(PartyMemberDTO partyMember, String party_num);
	
}
