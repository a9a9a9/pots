package com.proj.pots.party.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.proj.pots.party.dto.PartyCommentDTO;

@Mapper
public interface IPartyViewDAO {
	
	public ArrayList<PartyCommentDTO> comment(String id); 
}
