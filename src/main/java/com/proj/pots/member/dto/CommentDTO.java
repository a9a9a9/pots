package com.proj.pots.member.dto;

public class CommentDTO {
	private int square_num;
	private String id;
	private int comment_num;
	private String comment_content;
	private String comment_date;
	private String nick;
	public int getSquare_num() {
		return square_num;
	}
	public void setSquare_num(int square_num) {
		this.square_num = square_num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getComment_num() {
		return comment_num;
	}
	public void setComment_num(int comment_num) {
		this.comment_num = comment_num;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public String getComment_date() {
		return comment_date;
	}
	public void setComment_date(String comment_date) {
		this.comment_date = comment_date;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	
}
