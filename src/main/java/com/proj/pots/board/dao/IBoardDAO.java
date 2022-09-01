package com.proj.pots.board.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.proj.pots.member.dto.BoardDTO;
import com.proj.pots.member.dto.CommentDTO;
import com.proj.pots.member.dto.NoticeDTO;


@Mapper
public interface IBoardDAO {
	public void writeProc(BoardDTO board);
	
	public void noticeWriteProc(NoticeDTO board);

	public ArrayList<BoardDTO> boardProc(@Param("b") int begin, @Param("e")int end,  @Param("sel")String sel, @Param("search") String search);
	
	public ArrayList<NoticeDTO> noticeProc(@Param("b") int begin, @Param("e")int end,  @Param("sel")String sel, @Param("search") String search);

	public BoardDTO viewProc(int square_num);
	
	void upNum(int square_num);
	
	public NoticeDTO noticeViewProc(int notice_num);
	
	void noticeUpNum(int notice_num);

	public int boardCount(HashMap<String, Object> map);
	
	public int noticeCount(HashMap<String, Object> map);

	public int modifyProc(BoardDTO board);

	public int deleteProc(int square_num);

	public void commentProc(CommentDTO com);

	public ArrayList<CommentDTO> commentListProc(int square_num);

	public int commentDelete(int comment_num);
	
}
