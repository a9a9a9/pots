package com.proj.pots.party.dto;

public class PartyMemberDTO extends PartyDTO{

	private int mycharge;		//결제한 금액
	private String mystartday;	//파티 가입일
	
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
