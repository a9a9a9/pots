package com.proj.pots.party.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.proj.pots.member.dto.MemberDTO;
import com.proj.pots.party.dto.PartnerInfoDTO;
import com.proj.pots.party.dto.PartyCommentDTO;
import com.proj.pots.party.dto.PartyDTO;
import com.proj.pots.party.dto.PartyRegDTO;

public interface IPartyViewService { 
	
	public ArrayList<PartyCommentDTO> comment(String id);
	
	public MemberDTO memberInfo(String id);

	PartnerInfoDTO selectAccount(String id);

//	PartnerInfoDTO updateAccount(String id);

}
