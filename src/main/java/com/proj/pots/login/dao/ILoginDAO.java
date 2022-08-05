package com.proj.pots.login.dao;

import org.apache.ibatis.annotations.Mapper;

import com.proj.pots.member.dto.MemberDTO;


@Mapper
public interface ILoginDAO {
	MemberDTO loginProc(MemberDTO login);
}
