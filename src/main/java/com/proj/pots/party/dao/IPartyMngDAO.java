package com.proj.pots.party.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.proj.pots.party.dto.PartyBillDTO;
import com.proj.pots.party.dto.PartyCommentDTO;
import com.proj.pots.party.dto.PartyListDTO;
import com.proj.pots.party.dto.PartyMemberDTO;
import com.proj.pots.party.dto.PartyRegDTO;

@Mapper
public interface IPartyMngDAO {
	
	int insertParty(PartyRegDTO regDto);
	
	PartyListDTO latestParty(String id);
	
	ArrayList<PartyListDTO> partyList(String id);
	
	ArrayList<PartyListDTO> partySearch(Map<String,String> map);
	
	ArrayList<PartyMemberDTO> partyJoinList(String id);
	
	ArrayList<PartyMemberDTO> partyJoinSearch(Map<String, String> map);
	
	ArrayList<PartyBillDTO> bill(String id);

	PartyListDTO partySelect(String party_num);
	
	ArrayList<PartyMemberDTO> partyMember(String party_num);
	
	ArrayList<PartyCommentDTO> partyComment (String party_num);
	
	ArrayList<PartyListDTO> bill_now(String id);
	
	int bill_total(String id);

	int partyBillInsert(PartyBillDTO billDto);

	int partyDelete(String party_num);

	int partyClose(String party_num);

	int insertComment(PartyCommentDTO comment);

	int partyUpdate(PartyListDTO party);

	int deleteComment(String no_cmnt);

	String selectComment(Map<String, String> map);
}
