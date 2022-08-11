package com.proj.pots.party.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.proj.pots.party.dto.PartyListDTO;
import com.proj.pots.party.dto.PartyRegDTO;

@Mapper
public interface IPartyMngDAO {
	
	void insertParty(PartyRegDTO regDto);
	
	ArrayList<PartyListDTO> partyList(String id);
	
}
