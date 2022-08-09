package com.proj.pots.party.service;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.proj.pots.party.dto.PartyCommentDTO;
import com.proj.pots.party.dto.PartyDTO;
import com.proj.pots.party.dto.PartyRegDTO;

public interface IPartyViewService {

	ArrayList<PartyCommentDTO> commentProc(Model model);
	
	ArrayList<PartyRegDTO> partyProc(Model model);

}
