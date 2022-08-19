package com.proj.pots.party.dto;

public class PartyRegDTO extends PartyDTO{
	
	private String party_regdate;		//파티생성날짜
	private String party_service;		//서비스 기본분류
	private String party_subservice;	//서비스 소분류
	private String party_title;			//제목
	private int party_member;			//모집인원
	private String party_id;			//계정 아이디(이메일)
	private String party_pw;			//계정 비밀번호
	private String party_tel;			//연락처
	private String party_start;			//진행기간 시작날짜
	private String party_end;			//진행기간 종료날짜
	private int party_charge;		//참여금액
	private String party_adult;			//19세 이상
	private String party_notice;		//공지사항
	private String party_available;     //파티모집가능여부
	
	private String  diff;
	private String logo;
	private int pay;
	private int plus;
	
	
	public String getParty_regdate() {
		return party_regdate;
	}
	public void setParty_regdate(String party_regdate) {
		this.party_regdate = party_regdate;
	}
	public String getParty_service() {
		return party_service;
	}
	public void setParty_service(String party_service) {
		this.party_service = party_service;
	}
	public String getParty_subservice() {
		return party_subservice;
	}
	public void setParty_subservice(String party_subservice) {
		this.party_subservice = party_subservice;
	}
	public String getParty_title() {
		return party_title;
	}
	public void setParty_title(String party_title) {
		this.party_title = party_title;
	}
	public int getParty_member() {
		return party_member;
	}
	public void setParty_member(int party_member) {
		this.party_member = party_member;
	}
	public String getParty_id() {
		return party_id;
	}
	public void setParty_id(String party_id) {
		this.party_id = party_id;
	}
	public String getParty_pw() {
		return party_pw;
	}
	public void setParty_pw(String party_pw) {
		this.party_pw = party_pw;
	}
	public String getParty_tel() {
		return party_tel;
	}
	public void setParty_tel(String party_tel) {
		this.party_tel = party_tel;
	}
	public String getParty_start() {
		return party_start;
	}
	public void setParty_start(String party_start) {
		this.party_start = party_start;
	}
	public String getParty_end() {
		return party_end;
	}
	public void setParty_end(String party_end) {
		this.party_end = party_end;
	}
	public int getParty_charge() {
		return party_charge;
	}
	public void setParty_charge(int party_charge) {
		this.party_charge = party_charge;
	}
	public String getParty_adult() {
		return party_adult;
	}
	public void setParty_adult(String party_adult) {
		this.party_adult = party_adult;
	}
	public String getParty_notice() {
		return party_notice;
	}
	public void setParty_notice(String party_notice) {
		this.party_notice = party_notice;
	}
	public String getParty_available() {
		return party_available;
	}
	public void setParty_available(String party_available) {
		this.party_available = party_available;
	}
	public String getDiff() {
		return diff;
	}
	public void setDiff(String diff) {
		this.diff = diff;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	public int getPay() {
		return pay;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}
	public int getPlus() {
		return plus;
	}
	public void setPlus(int plus) {
		this.plus = plus;
	}
	

}
