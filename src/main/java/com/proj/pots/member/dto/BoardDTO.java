package com.proj.pots.member.dto;

public class BoardDTO { 
	private String id; //아이디
	private String square_title; //제목
	private String square_content; //내용
	private int square_view; // 조회수
	private int square_num;
	private String square_date; //작성일
	private String nick; //닉네임
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSquare_title() {
		return square_title;
	}
	public void setSquare_title(String square_title) {
		this.square_title = square_title;
	}
	public String getSquare_content() {
		return square_content;
	}
	public void setSquare_content(String square_content) {
		this.square_content = square_content;
	}
	public int getSquare_view() {
		return square_view;
	}
	public void setSquare_view(int square_view) {
		this.square_view = square_view;
	}
	public int getSquare_num() {
		return square_num;
	}
	public void setSquare_num(int square_num) {
		this.square_num = square_num;
	}
	public String getSquare_date() {
		return square_date;
	}
	public void setSquare_date(String square_date) {
		this.square_date = square_date;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	


	

}
