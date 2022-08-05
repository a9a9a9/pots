package com.proj.pots.membership.dao;

import org.apache.ibatis.annotations.Mapper;

import com.proj.pots.member.dto.MemberDTO;

@Mapper
public interface IMemberDAO {
	int isExistId(String id);
	
	void insertMember(MemberDTO member);
	
}
