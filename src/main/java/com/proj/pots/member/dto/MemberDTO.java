package com.proj.pots.member.dto;

public class MemberDTO extends LoginDTO{
	private String id;
	private String nick;
	private String name;
	private String tel;
	private int profile;
	private int point;
//	private String personal_num;
//	private String account_name;
//	private String account_num;
	private String joined_date;
	private int sns; 
	
	public int getSns() {
		return sns;
	}
	public void setSns(int sns) {
		this.sns = sns;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getProfile() {
		return profile;
	}
	public void setProfile(int profile) {
		this.profile = profile;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getJoined_date() {
		return joined_date;
	}
	public void setJoined_date(String joined_date) {
		this.joined_date = joined_date;
	}
	
	
	
	
}
