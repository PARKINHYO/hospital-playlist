package org.kpu.ihpweb.controller;

import javax.servlet.http.HttpSession;

import org.kpu.ihpweb.domain.CafeMemberVO;
import org.kpu.ihpweb.service.CafeMemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	@Autowired(required = true)
	private CafeMemberService cafememberService;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		logger.info("main home page complete");
		return "home";
	}

	@RequestMapping(value = "/homeRedirect", method = RequestMethod.GET)
	public String home2(HttpSession session) throws Exception{
		String id = (String) session.getAttribute("id");
		CafeMemberVO point = cafememberService.memberRead(id);
		session.setAttribute("point", point);
		logger.info("main home page complete");
		return "redirect:/";
	}

}
