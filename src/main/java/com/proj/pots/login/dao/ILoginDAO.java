package com.proj.pots.login.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.proj.pots.member.dto.LoginDTO;
import com.proj.pots.party.dto.PartnerInfoDTO;


@Mapper
public interface ILoginDAO {
	LoginDTO loginProc(LoginDTO login);
	
	PartnerInfoDTO checkPartner(@Param("id") String id);
}
