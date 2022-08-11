package com.proj.pots.party.dao;

import org.apache.ibatis.annotations.Mapper;

import com.proj.pots.party.dto.PartyRegDTO;

@Mapper
public interface IPartyMngDAO {
	public void insertParty(PartyRegDTO regDto);
}
