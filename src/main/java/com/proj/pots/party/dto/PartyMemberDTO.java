package com.proj.pots.party.dto;

public class PartyMemberDTO extends PartyListDTO{

	private int no_mem;
	private String mycharge;		//결제한 금액
	private String mystartday;	//파티 가입일
	private String use_account;
	private String use_point;
	
	private String day;
	private String time;
	private String week;
	
	public int getNo_mem() {
		return no_mem;
	}
	public void setNo_mem(int no_mem) {
		this.no_mem = no_mem;
	}
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
	public String getUse_account() {
		return use_account;
	}
	public void setUse_account(String use_account) {
		this.use_account = use_account;
	} 
	public String getUse_point() {
		return use_point;
	}
	public void setUse_point(String use_point) {
		this.use_point = use_point;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getWeek() {
		return week;
	}
	public void setWeek(String week) {
		this.week = week;
	}
	
}
