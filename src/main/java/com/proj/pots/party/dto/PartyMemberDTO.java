package com.proj.pots.party.dto;

public class PartyMemberDTO {

	private String id;			//아이디(이메일)
	private String nick;		//닉네임
	private int party_num;		//파티번호
	private int mycharge;		//결제한 금액
	private String mystartday;	//파티 가입일
	
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
	public int getParty_num() {
		return party_num;
	}
	public void setParty_num(int party_num) {
		this.party_num = party_num;
	}
	public int getMycharge() {
		return mycharge;
	}
	public void setMycharge(int mycharge) {
		this.mycharge = mycharge;
	}
	public String getMystartday() {
		return mystartday;
	}
	public void setMystartday(String mystartday) {
		this.mystartday = mystartday;
	}
}
