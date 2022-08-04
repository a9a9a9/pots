package com.proj.pots.party.dto;

public class PartyCommentDTO extends PartyDTO{
	
	private String comment;			//내용
	private String comment_private;	//비밀글 여부			
	private String comment_date;	//등록시간
	
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
