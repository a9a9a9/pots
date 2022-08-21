package com.proj.pots.main.controller;

import java.text.ParseException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.proj.pots.main.dao.IPartyPageDAO;
import com.proj.pots.main.service.PartyPageService;

@Controller
public class PartyPageController {
	@Autowired private PartyPageService service;
	@Autowired IPartyPageDAO partyDao;
	
	@RequestMapping(value = "videoProc")
	public String videoProc(Model model, @RequestParam(value="currentPage", required = false, defaultValue = "1")int currentPage) throws ParseException {
		String sub = "10";
		service.listView(model, currentPage, sub);
		return "forward:/index?formpath=video";
		
	}
}
