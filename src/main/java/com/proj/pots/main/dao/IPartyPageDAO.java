package com.proj.pots.main.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.proj.pots.party.dto.PartyListDTO;

@Mapper
public interface IPartyPageDAO {
	public ArrayList<PartyListDTO> videoProc();
}
