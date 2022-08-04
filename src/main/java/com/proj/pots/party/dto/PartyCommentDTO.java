package com.proj.pots.party.dto;

public class PartyCommentDTO {

	private int party_num;			//파티번호
	private String id;				//아이디(이메일)
	private String nick;			//닉네임
	private String comment;			//내용
	private String comment_private;	//비밀글 여부			
	private String comment_date;	//등록시간
	
	public int getParty_num() {
		return party_num;
	}
	public void setParty_num(int party_num) {
		this.party_num = party_num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
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
