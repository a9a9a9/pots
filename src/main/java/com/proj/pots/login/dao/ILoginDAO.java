package com.proj.pots.login.dao;

import org.apache.ibatis.annotations.Mapper;

import com.proj.pots.member.dto.LoginDTO;


@Mapper
public interface ILoginDAO {
	LoginDTO loginProc(LoginDTO login);
}
