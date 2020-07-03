package org.kpu.ihpweb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.kpu.ihpweb.domain.CafeMemberVO;
import org.kpu.ihpweb.service.CafeMemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/cafe")
public class CafeMemberController {

	@Autowired(required = true)
	private CafeMemberService cafememberService;

	private static final Logger logger = LoggerFactory.getLogger(CafeMemberController.class);

	@RequestMapping(value = { "/register" }, method = RequestMethod.GET)
	public String getRegister() throws Exception {
		logger.info("member register complete(GET)");
		return "cafe/register";
	}

	@RequestMapping(value = { "/register" }, method = RequestMethod.POST)
	public String postRegister(CafeMemberVO vo) throws Exception {
		cafememberService.register(vo);	
		logger.info("member register complelte(POST)");
		return "redirect:/";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(CafeMemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {

		HttpSession session = req.getSession();
		CafeMemberVO login = cafememberService.login(vo, session);
		CafeMemberVO point = cafememberService.memberRead(vo.getId());
		if (login == null) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
		} else {
			session.setAttribute("member", login);
			session.setAttribute("point", point);
		}

		logger.info("member login complelte");

		return "redirect:/";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
		session.invalidate();
		logger.info("member logout complelte");
		return "redirect:/";
	}

	@RequestMapping(value = "/memberUpdateView", method = RequestMethod.GET)
	public String registerUpdateView() throws Exception {
		logger.info("member update complelte(GET)");
		return "cafe/memberUpdateView";
	}

	@RequestMapping(value = "/memberUpdate", method = RequestMethod.POST)
	public String registerUpdate(CafeMemberVO vo, HttpSession session) throws Exception {
		cafememberService.memberUpdate(vo);
		session.invalidate();
		logger.info("member update complelte(POST)");
		return "redirect:/";
	}

	@RequestMapping(value = "/memberDeleteView", method = RequestMethod.GET)
	public String memberDeleteView() throws Exception {
		logger.info("member delete complelte(GET)");
		return "cafe/memberDeleteView";
	}

	@RequestMapping(value = "/memberDelete", method = RequestMethod.POST)
	public String memberDelete(CafeMemberVO vo, HttpSession session, RedirectAttributes rttr) throws Exception {

		CafeMemberVO member = (CafeMemberVO) session.getAttribute("member");
		String sessionPass = member.getPasswd();
		String voPass = vo.getPasswd();

		if (!(sessionPass.equals(voPass))) {
			rttr.addFlashAttribute("msg", false);
			return "redirect:/member/memberDeleteView";
		}
		cafememberService.memberDelete(vo);
		session.invalidate();
		logger.info("member delete complelte(POST)");
		return "redirect:/";
	}

}
