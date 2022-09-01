package com.proj.pots.party.dto;

public class PartyCommentDTO extends PartyRegDTO{
	
	private int no_cmnt;
	private String comment;			//내용
	private String comment_private;	//비밀글 여부			
	private String comment_date;	//등록시간
	private String comment_to_id;	//누구에게 보내느냐(id)
	private String comment_to_nick;	//누구에게 보내느냐(nick)
	
	public String getComment_to_id() {
		return comment_to_id;
	}
	public void setComment_to_id(String comment_to_id) {
		this.comment_to_id = comment_to_id;
	}
	public String getComment_to_nick() {
		return comment_to_nick;
	}
	public void setComment_to_nick(String comment_to_nick) {
		this.comment_to_nick = comment_to_nick;
	}
	public int getNo_cmnt() {
		return no_cmnt;
	}
	public void setNo_cmnt(int no_cmnt) {
		this.no_cmnt = no_cmnt;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getComment_private() {
		return comment_private;
	}
	public void setComment_private(String comment_private) {
		this.comment_private = comment_private;
	}
	public String getComment_date() {
		return comment_date;
	}
	public void setComment_date(String comment_date) {
		this.comment_date = comment_date;
	}

}
