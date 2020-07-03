package org.kpu.ihpweb.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.kpu.ihpweb.domain.CafeBoardVO;
import org.kpu.ihpweb.service.CafeBoardService;
import org.kpu.ihpweb.service.CafeMemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/board")
public class CafeBoardController {

	@Autowired
	CafeBoardService cafeboardService;

	@Autowired
	CafeMemberService cafememberService;

	private static final Logger logger = LoggerFactory.getLogger(CafeBoardController.class);

	@RequestMapping("list.do")
	public ModelAndView list() throws Exception {
		List<CafeBoardVO> list = cafeboardService.listAll();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/list");
		mav.addObject("list", list);
		logger.info("board list complete");
		return mav;
	}

	@RequestMapping(value = "write.do", method = RequestMethod.GET)
	public String write() {
		logger.info("board write complete");
		return "board/write";
	}

	@RequestMapping(value = "notice.do", method = RequestMethod.GET)
	public String notice() {
		logger.info("board notice complete");
		return "board/notice";
	}

	@RequestMapping(value = "insert.do", method = RequestMethod.POST)
	public String insert(@ModelAttribute CafeBoardVO vo, HttpSession session) throws Exception {
		String writer = (String) session.getAttribute("id");
		vo.setWriter_id(writer);
		cafeboardService.create(vo);
		logger.info("board insert complete");
		return "redirect:list.do";
	}

	@RequestMapping(value = "view.do", method = RequestMethod.GET)
	public ModelAndView view(@RequestParam int b_id, HttpSession session) throws Exception {

		cafeboardService.increaseViewcnt(b_id, session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/view");
		mav.addObject("dto", cafeboardService.read(b_id));
		logger.info("board view complete");
		return mav;
	}

	@RequestMapping(value = "update.do", method = RequestMethod.POST)
	public String update(@ModelAttribute CafeBoardVO vo) throws Exception {
		cafeboardService.update(vo);
		logger.info("board update complete");
		return "redirect:list.do";
	}

	@RequestMapping("delete.do")
	public String delete(@RequestParam int b_id) throws Exception {
		cafeboardService.delete(b_id);
		logger.info("board delete complete");
		return "redirect:list.do";

	}

}
