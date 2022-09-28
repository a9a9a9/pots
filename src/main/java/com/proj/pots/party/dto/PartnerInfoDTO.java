package com.proj.pots.party.dto;

import com.proj.pots.member.dto.MemberDTO;

public class PartnerInfoDTO extends MemberDTO{

	private String personal_num; //파트너 주민등록번호
	private String account_name; //파트너 은행명
	private String account_num;  //파트너 계좌명
	
	public String getPersonal_num() {
		return personal_num;
	}
	public void setPersonal_num(String personal_num) {
		this.personal_num = personal_num;
	}
	public String getAccount_name() {
		return account_name;
	}
	public void setAccount_name(String account_name) {
		this.account_name = account_name;
	}
	public String getAccount_num() {
		return account_num;
	}
	public void setAccount_num(String account_num) {
		this.account_num = account_num;
	}
}
