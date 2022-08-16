package com.proj.pots.party.dto;

public class PartyBillDTO extends PartyDTO{

	private int bill_total;	//판매총액
	private int bill_paid; //지급금액
	private int bill_now;//미발생금
	private int bill_request; //지급요청
	private int bill_available; //출금가능
	
	
	private String bill_state;
	private int bill_num;
	private String bill_date;
	private String bill_method;
	private int bill_charge;
	private int bill_pay;
	private String bill_memo;
	private String bill_etc;
	
	
	public int getBill_total() {
		return bill_total;
	}
	public void setBill_total(int bill_total) {
		this.bill_total = bill_total;
	}
	public int getBill_paid() {
		return bill_paid;
	}
	public void setBill_paid(int bill_paid) {
		this.bill_paid = bill_paid;
	}
	public int getBill_now() {
		return bill_now;
	}
	public void setBill_now(int bill_now) {
		this.bill_now = bill_now;
	}
	public int getBill_request() {
		return bill_request;
	}
	public void setBill_request(int bill_request) {
		this.bill_request = bill_request;
	}
	public int getBill_available() {
		return bill_available;
	}
	public void setBill_available(int bill_available) {
		this.bill_available = bill_available;
	}
	
	
	public String getBill_state() {
		return bill_state;
	}
	public void setBill_state(String bill_state) {
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
