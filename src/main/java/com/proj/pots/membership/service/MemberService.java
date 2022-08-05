package com.proj.pots.membership.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proj.pots.membership.dao.IMemberDAO;

@Service
public class MemberService {
	@Autowired IMemberDAO memberDao;
	@Autowired HttpSession session;
	
	public String isExistId(String id) {
		if (id == null)
			return "아이디를 입력 하세요.";
		int count = memberDao.isExistId(id);
		if(count == 1)
			return "중복 아이디 입니다.";
		return "사용 가능한 아이디입니다.";
	}
}
