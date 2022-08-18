package com.proj.pots.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.proj.pots.main.dao.IPartyPageDAO;
import com.proj.pots.main.service.PartyPageService;

@Controller
public class PartyPageController {
	@Autowired private PartyPageService service;
	@Autowired IPartyPageDAO partyDao;
	
	@RequestMapping(value = "videoProc")
	public String videoProc(Model model) {
		service.videoProc(model);
		return "forward:/index?formpath=video";
		
	}
}
