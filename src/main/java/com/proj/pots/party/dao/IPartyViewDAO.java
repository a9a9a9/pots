package com.proj.pots.party.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.proj.pots.party.dto.CommentListDTO;
import com.proj.pots.party.dto.PartyCommentDTO;
import com.proj.pots.party.dto.PartyDTO;
import com.proj.pots.party.dto.PartyRegDTO;

@Mapper
public interface IPartyViewDAO {

	public ArrayList<PartyCommentDTO> commentProc();
	
	public ArrayList<PartyRegDTO> partyProc();
	
	public ArrayList<CommentListDTO> partyCommentList();

}
