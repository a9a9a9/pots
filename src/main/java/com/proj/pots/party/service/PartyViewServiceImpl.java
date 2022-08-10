package com.proj.pots.party.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.proj.pots.party.dao.IPartyViewDAO;
import com.proj.pots.party.dto.PartyCommentDTO;

@Service
public class PartyViewServiceImpl implements IPartyViewService{

	@Autowired IPartyViewDAO mapper;
	
	@Override
	public ArrayList<PartyCommentDTO> comment() {
		String id = "admin";
		ArrayList<PartyCommentDTO> list = mapper.comment(id);
//		ArrayList<PartyCommentDTO> list = new ArrayList<>();
//		for(int i = 0;i<5;i++) {
//			PartyCommentDTO party = new PartyCommentDTO();
//			party.setComment("comment" + i);
//			list.add(party);
//		}
		
		return list;  
	}
	

}
