package com.proj.pots.membership.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.proj.pots.member.dto.LoginDTO;
import com.proj.pots.member.dto.MemberDTO;
import com.proj.pots.party.dto.PartnerInfoDTO;

@Mapper
public interface IMemberDAO {
	int isExistId(String id);
	
	int isExistsnsId(String id);

	int insertLogin(LoginDTO login);
	
	void insertMember(MemberDTO member);
	
	MemberDTO memberInfo(String id);

	LoginDTO memberPassword(String id);

	void deleteLogin(String id);

	void deleteMember(String id);

	int updateLogin(LoginDTO login);
	
	int updateMember(MemberDTO member);
	
	int profileUpdate(MemberDTO member);

	MemberDTO selectPoint(String id);

	int updatePoint(MemberDTO member);

	PartnerInfoDTO checkPartner(String id);

	

	int isExistNick(String nick);
}
