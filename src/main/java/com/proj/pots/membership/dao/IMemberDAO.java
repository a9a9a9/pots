package com.proj.pots.membership.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IMemberDAO {
	int isExistId(String id);
	
}
