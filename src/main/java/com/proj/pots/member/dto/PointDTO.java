package com.proj.pots.member.dto;

public class PointDTO {
	
	private int point_num;
	private String id;
	private String point_date; // 날짜
	private String point_content; // 포인트 내용
	private int point_charge; // 충전 포인트
	private int use_point; // 사용 포인트
	
	public int getPoint_num() {
		return point_num;
	}
	public void setPoint_num(int point_num) {
		this.point_num = point_num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPoint_date() {
		return point_date;
	}
	public void setPoint_date(String point_date) {
		this.point_date = point_date;
	}
	public String getPoint_content() {
		return point_content;
	}
	public void setPoint_content(String point_content) {
		this.point_content = point_content;
	}
	public int getPoint_charge() {
		return point_charge;
	}
	public void setPoint_charge(int point_charge) {
		this.point_charge = point_charge;
	}
	public int getUse_point() {
		return use_point;
	}
	public void setUse_point(int use_point) {
		this.use_point = use_point;
	}
	
	
	

}
