package com.proj.pots.party.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.proj.pots.party.dao.IPartyViewDAO;
import com.proj.pots.party.dto.CommentListDTO;
import com.proj.pots.party.dto.PartyCommentDTO;
import com.proj.pots.party.dto.PartyDTO;
import com.proj.pots.party.dto.PartyRegDTO;

@Service
public class PartyViewServiceImpl implements IPartyViewService{

	@Autowired IPartyViewDAO mapper;
	
	@Override
	public ArrayList<PartyCommentDTO> commentProc(Model model) {
		ArrayList<PartyCommentDTO> commentList = mapper.commentProc();
		model.addAttribute("commentList", commentList); 
		return commentList;
	}
	
	@Override
	public ArrayList<PartyRegDTO> partyProc(Model model) {
		ArrayList<PartyRegDTO> partyList = mapper.partyProc();
		model.addAttribute("partyList", partyList);
		return partyList;  
	}
	
	@Override
	public ArrayList<CommentListDTO> partyCommentList(Model model) {
		ArrayList<CommentListDTO> comment = mapper.partyCommentList();
		model.addAttribute("comment", comment);
		return comment; 
	}
}
