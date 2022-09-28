package com.proj.pots.party.dto;

public class PartyDTO {

	private int party_num;  //파티번호
	private String id;	// 파티장 아이디
	private String nick;	//파티장 닉네임
	private int profile;	//파티장 프로필 이미지
	
	public int getProfile() {
		return profile;
	}
	public void setProfile(int profile) {
		this.profile = profile;
	}
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
}
