package com.proj.pots.party.dto;

public class PartyMemberDTO extends PartyListDTO{

	private String mycharge;		//결제한 금액
	private String mystartday;	//파티 가입일
	
	public String getMycharge() {
		return mycharge;
	}
	public void setMycharge(String mycharge) {
		this.mycharge = mycharge;
	}
	public String getMystartday() {
		return mystartday;
	}
	public void setMystartday(String mystartday) {
		this.mystartday = mystartday;
	}
}
