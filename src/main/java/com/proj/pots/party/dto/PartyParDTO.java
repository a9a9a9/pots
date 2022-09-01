package com.proj.pots.party.dto;

public class PartyParDTO extends PartyDTO{
	
	private String nick;
	private String party_remain;
	private String party_pay;
	private String party_refund;
	private String party_commision;
	private String party_price;
	
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getParty_remain() {
		return party_remain;
	}
	public void setParty_remain(String party_remain) {
		this.party_remain = party_remain;
	}
	public String getParty_pay() {
		return party_pay;
	}
	public void setParty_pay(String party_pay) {
		this.party_pay = party_pay;
	}
	public String getParty_refund() {
		return party_refund;
	}
	public void setParty_refund(String party_refund) {
		this.party_refund = party_refund;
	}
	public String getParty_commision() {
		return party_commision;
	}
	public void setParty_commision(String party_commision) {
		this.party_commision = party_commision;
	}
	public String getParty_price() {
		return party_price;
	}
	public void setParty_price(String party_price) {
		this.party_price = party_price;
	}
}
