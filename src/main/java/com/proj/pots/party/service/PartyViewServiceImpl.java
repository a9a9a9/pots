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
	public ArrayList<PartyCommentDTO> comment(String id) {
		ArrayList<PartyCommentDTO> list = mapper.comment(id);
		return list;  
	}

}
