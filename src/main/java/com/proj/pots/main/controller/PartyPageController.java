package com.proj.pots.main.controller;

import java.text.ParseException;

import javax.servlet.http.HttpServletRequest;

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
	
	// main 파티리스트
	@RequestMapping(value = "main")
	public String main(Model model,HttpServletRequest req, @RequestParam(value="currentPage", required = false, defaultValue = "1")int currentPage) throws ParseException {
		service.mainList(model, currentPage, req);
		return "forward:/index?formpath=main";
	}
	
	// 카테고리
	@RequestMapping(value = "videoProc")
	public String videoProc(Model model,HttpServletRequest req, @RequestParam(value="currentPage", required = false, defaultValue = "1")int currentPage) throws ParseException {
		String sub = "10";
		service.listView(model, currentPage, sub, req);
		return "forward:/index?formpath=video";
	}
	@RequestMapping(value = "artProc")
	public String artProc(Model model,HttpServletRequest req, @RequestParam(value="currentPage", required = false, defaultValue = "1")int currentPage) throws ParseException {
		String sub = "20";
		service.listView(model, currentPage, sub, req);
		return "forward:/index?formpath=art";
	}
	@RequestMapping(value = "gameProc")
	public String gameProc(Model model,HttpServletRequest req, @RequestParam(value="currentPage", required = false, defaultValue = "1")int currentPage) throws ParseException {
		String sub = "30";
		service.listView(model, currentPage, sub, req);
		return "forward:/index?formpath=game";
	}
	@RequestMapping(value = "etcProc")
	public String etcProc(Model model,HttpServletRequest req, @RequestParam(value="currentPage", required = false, defaultValue = "1")int currentPage) throws ParseException {
		String sub = "60";
		service.listView(model, currentPage, sub, req);
		return "forward:/index?formpath=etc";
	}
	
	// sub 카테고리
	
	// video
	@RequestMapping(value = "netflixProc")
	public String netflixProc(Model model,HttpServletRequest req, @RequestParam(value="currentPage", required = false, defaultValue = "1")int currentPage) throws ParseException {
		String sub = "1010";
		service.sublistView(model, currentPage, sub, req);
		return "forward:/index?formpath=netflix";
	}
	@RequestMapping(value = "watchaProc")
	public String watchaProc(Model model,HttpServletRequest req, @RequestParam(value="currentPage", required = false, defaultValue = "1")int currentPage) throws ParseException {
		String sub = "1020";
		service.sublistView(model, currentPage, sub, req);
		return "forward:/index?formpath=watcha";
	}
	@RequestMapping(value = "youtubeProc")
	public String youtubeProc(Model model,HttpServletRequest req, @RequestParam(value="currentPage", required = false, defaultValue = "1")int currentPage) throws ParseException {
		String sub = "1030";
		service.sublistView(model, currentPage, sub, req);
		return "forward:/index?formpath=youtube";
	}
	@RequestMapping(value = "wavveProc")
	public String wavveProc(Model model,HttpServletRequest req, @RequestParam(value="currentPage", required = false, defaultValue = "1")int currentPage) throws ParseException {
		String sub = "1040";
		service.sublistView(model, currentPage, sub, req);
		return "forward:/index?formpath=wavve";
	}
	@RequestMapping(value = "tivingProc")
	public String tivingProc(Model model,HttpServletRequest req, @RequestParam(value="currentPage", required = false, defaultValue = "1")int currentPage) throws ParseException {
		String sub = "1050";
		service.sublistView(model, currentPage, sub, req);
		return "forward:/index?formpath=tiving";
	}
	@RequestMapping(value = "disneyProc")
	public String disneyProc(Model model,HttpServletRequest req, @RequestParam(value="currentPage", required = false, defaultValue = "1")int currentPage) throws ParseException {
		String sub = "1080";
		service.sublistView(model, currentPage, sub, req);
		return "forward:/index?formpath=disney";
	}
	
	// art
	@RequestMapping(value = "ridiProc")
	public String ridiProc(Model model,HttpServletRequest req, @RequestParam(value="currentPage", required = false, defaultValue = "1")int currentPage) throws ParseException {
		String sub = "2010";
		service.sublistView(model, currentPage, sub, req);
		return "forward:/index?formpath=ridi";
	}
	@RequestMapping(value = "millieProc")
	public String millieProc(Model model,HttpServletRequest req, @RequestParam(value="currentPage", required = false, defaultValue = "1")int currentPage) throws ParseException {
		String sub = "2020";
		service.sublistView(model, currentPage, sub, req);
		return "forward:/index?formpath=millie";
	}
	@RequestMapping(value = "yes24Proc")
	public String yes24Proc(Model model,HttpServletRequest req, @RequestParam(value="currentPage", required = false, defaultValue = "1")int currentPage) throws ParseException {
		String sub = "2030";
		service.sublistView(model, currentPage, sub, req);
		return "forward:/index?formpath=yes24";
	}
	@RequestMapping(value = "spotifyProc")
	public String spotifyProc(Model model,HttpServletRequest req, @RequestParam(value="currentPage", required = false, defaultValue = "1")int currentPage) throws ParseException {
		String sub = "2040";
		service.sublistView(model, currentPage, sub, req);
		return "forward:/index?formpath=spotify";
	}
	
	// game
	@RequestMapping(value = "nintendoProc")
	public String nintendoProc(Model model,HttpServletRequest req, @RequestParam(value="currentPage", required = false, defaultValue = "1")int currentPage) throws ParseException {
		String sub = "3010";
		service.sublistView(model, currentPage, sub, req);
		return "forward:/index?formpath=nintendo";
	}
	@RequestMapping(value = "xboxProc")
	public String xboxProc(Model model,HttpServletRequest req, @RequestParam(value="currentPage", required = false, defaultValue = "1")int currentPage) throws ParseException {
		String sub = "3050";
		service.sublistView(model, currentPage, sub, req);
		return "forward:/index?formpath=xbox";
	}
	
	// etc
	@RequestMapping(value = "membershipProc")
	public String membershipProc(Model model,HttpServletRequest req, @RequestParam(value="currentPage", required = false, defaultValue = "1")int currentPage) throws ParseException {
		String sub = "6050";
		service.sublistView(model, currentPage, sub, req);
		return "forward:/index?formpath=membership";
	}
	@RequestMapping(value = "msofficeProc")
	public String msofficeProc(Model model,HttpServletRequest req, @RequestParam(value="currentPage", required = false, defaultValue = "1")int currentPage) throws ParseException {
		String sub = "6010";
		service.sublistView(model, currentPage, sub, req);
		return "forward:/index?formpath=msoffice";
	}
}
