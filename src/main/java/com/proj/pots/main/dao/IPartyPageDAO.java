package com.proj.pots.main.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.proj.pots.party.dto.PartyListDTO;

@Mapper
public interface IPartyPageDAO {
	public ArrayList<PartyListDTO> subProc(@Param("b")int begin, @Param("e")int end, @Param("sub")String sub);

	public int listCount(@Param("sub") String sub);
}
