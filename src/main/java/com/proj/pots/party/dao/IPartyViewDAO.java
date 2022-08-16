package com.proj.pots.party.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.proj.pots.member.dto.MemberDTO;
import com.proj.pots.party.dto.PartnerInfoDTO;
import com.proj.pots.party.dto.PartyBillDTO;
import com.proj.pots.party.dto.PartyCommentDTO;
import com.proj.pots.party.dto.PartyParDTO;

@Mapper
public interface IPartyViewDAO {
	
	ArrayList<PartyCommentDTO> comment(String id);
	
	PartnerInfoDTO selectAccount(String id);
	
	void insertAccount(PartnerInfoDTO partner);
		
	void updateAccount(PartnerInfoDTO partner);  
	
	ArrayList<PartyBillDTO> bill(String id);
	
	ArrayList<PartyParDTO> par(String id);
}
