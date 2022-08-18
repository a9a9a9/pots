package com.proj.pots.main.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.proj.pots.main.dao.IPartyPageDAO;
import com.proj.pots.party.dto.PartyListDTO;

@Service
public class PartyPageService {
	@Autowired IPartyPageDAO partyDao;
	@Autowired HttpSession session;
	
	public void videoProc(Model model) {
		ArrayList<PartyListDTO> list = partyDao.videoProc();
		model.addAttribute("list", list);
	}
	
	
}
