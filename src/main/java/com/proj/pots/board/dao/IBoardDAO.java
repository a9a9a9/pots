package com.proj.pots.board.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.proj.pots.member.dto.BoardDTO;


@Mapper
public interface IBoardDAO {
	public void writeProc(BoardDTO board);

	public ArrayList<BoardDTO> boardProc(@Param("b") int begin, @Param("e")int end,  @Param("sel")String sel, @Param("search") String search);

	public BoardDTO viewProc(int square_num);
	
	void upNum(int square_num);

	public int boardCount(HashMap<String, Object> map);

	public int modifyProc(BoardDTO board);

	public int deleteProc(int square_num);
	
}
