package com.proj.pots.party;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.proj.pots.party.dto.PartyRegDTO;


@Controller
public class PartyMngController {
	
	@RequestMapping(value = "/partyJoinList")
	public String partyJoinList() {
		return "partyAdmin/partyJoinList";
	}
	
	@RequestMapping(value = "/partyList")
	public String partyList() {
		return "partyAdmin/partyList";
	}
	
	@RequestMapping(value = "/partyCancelReq")
	public String partyCancelReq() {
		return "partyAdmin/partyCancelReq";
	}
	
	@RequestMapping(value = "/partyCancelList")
	public String partyCancelList() {
		return "partyAdmin/partyCancelList";
	}
	
	@RequestMapping(value = "/partytest")
	public String partytest() {
		return "partyAdmin/partytest";
	}
	
	@PostMapping(value = "/partyReg")
	public String partyReg(PartyRegDTO partyDto) {
		System.out.println(partyDto.getParty_charge());
		System.out.println(partyDto.getParty_start());
		return "partyAdmin/partyCreate";
	}
	

}
