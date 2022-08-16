package com.proj.pots.party.dto;

public class PartyBillDTO extends PartyDTO{

	private String bill_state;
	private int bill_num;
	private String bill_date;
	private String bill_method;
	private int bill_charge;
	private int bill_pay;
	private String bill_memo;
	private String bill_etc;
	
	public String getBill_state() {
		return bill_state;
	}
	public void setBill_sate(String bill_state) {
		this.bill_state = bill_state;
	}
	public int getBill_num() {
		return bill_num;
	}
	public void setBill_num(int bill_num) {
		this.bill_num = bill_num;
	}
	public String getBill_date() {
		return bill_date;
	}
	public void setBill_date(String bill_date) {
		this.bill_date = bill_date;
	}
	public String getBill_method() {
		return bill_method;
	}
	public void setBill_method(String bill_method) {
		this.bill_method = bill_method;
	}
	public int getBill_charge() {
		return bill_charge;
	}
	public void setBill_charge(int bill_charge) {
		this.bill_charge = bill_charge;
	}
	public int getBill_pay() {
		return bill_pay;
	}
	public void setBill_pay(int bill_pay) {
		this.bill_pay = bill_pay;
	}
	public String getBill_memo() {
		return bill_memo;
	}
	public void setBill_memo(String bill_memo) {
		this.bill_memo = bill_memo;
	}
	public String getBill_etc() {
		return bill_etc;
	}
	public void setBill_etc(String bill_etc) {
		this.bill_etc = bill_etc;
	}
}
