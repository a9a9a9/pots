package com.proj.pots.party.dto;

public class PartyListDTO extends PartyRegDTO{
	
	private String party_total_charge;	//파티 총 금액
	private int party_now_member;		//파티 현재 멤버 수
	private int party_left_member;		//파티 남은 멤버 수
	private String party_left_date;		//파티 이용 기간
	private int party_remain; 		// 파티 남은 기간

	public String getParty_total_charge() {
		return party_total_charge;
	}

	public void setParty_total_charge(String party_total_charge) {
		this.party_total_charge = party_total_charge;
	}

	public int getParty_now_member() {
		return party_now_member;
	}

	public void setParty_now_member(int party_now_member) {
		this.party_now_member = party_now_member;
	}

	public int getParty_left_member() {
		return party_left_member;
	}

	public void setParty_left_member(int party_left_member) {
		this.party_left_member = party_left_member;
	}

	public String getParty_left_date() {
		return party_left_date;
	}

	public void setParty_left_date(String party_left_date) {
		this.party_left_date = party_left_date;
	}

	public int getParty_remain() {
		return party_remain;
	}

	public void setParty_remain(int party_remain) {
		this.party_remain = party_remain;
	}
	
	

}
