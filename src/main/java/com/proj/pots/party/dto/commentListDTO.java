package com.proj.pots.party.dto;

import org.springframework.stereotype.Component;

@Component
public class commentListDTO {

	private int party_num;
	private String partner;
	private String party_title;
	private String id;
	private String nick;
	private String comment;
	private String comment_date;
	
	public int getParty_num() {
		return party_num;
	}
	public void setParty_num(int party_num) {
		this.party_num = party_num;
	}
	public String getPartner() {
		return partner;
	}
	public void setPartner(String partner) {
		this.partner = partner;
	}
	public String getParty_title() {
		return party_title;
	}
	public void setParty_title(String party_title) {
		this.party_title = party_title;
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
	public String getComment_date() {
		return comment_date;
	}
	public void setComment_date(String comment_date) {
		this.comment_date = comment_date;
	}

}
