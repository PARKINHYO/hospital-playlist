package org.kpu.ihpweb.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.kpu.ihpweb.domain.CafeBoardVO;
import org.kpu.ihpweb.domain.CafeMemberVO;
import org.kpu.ihpweb.persistence.CafeBoardDAO;
import org.kpu.ihpweb.persistence.CafeMemberDAO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CafeBoardServiceImpl implements CafeBoardService {

	@Autowired
	private CafeBoardDAO cafeboardDAO;

	@Autowired
	private CafeMemberDAO cafememberDAO;

	private static final Logger logger = LoggerFactory.getLogger(CafeBoardServiceImpl.class);

	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED, timeout = 10)
	@Override
	public void create(CafeBoardVO vo) throws Exception {

		String title = vo.getB_title();
		String content = vo.getB_main();

		String writer = vo.getWriter_id();

		title = title.replace("<", "&lt;");
		title = title.replace("<", "&gt;");
		title = title.replace("  ", "&nbsp;&nbsp;");

		//content = content.replace("\n", "<br>");
		vo.setB_title(title);
		vo.setB_main(content);

		logger.info("board create ServiceImpl start");
		CafeMemberVO vo2 = cafememberDAO.read(writer);
		logger.info("member read complete");
		cafememberDAO.increasePoint(vo2);
		logger.info("increase point complete");
		cafeboardDAO.create(vo);
		logger.info("board create ServiceImpl complete");

	}

	@Override
	public CafeBoardVO read(int bno) throws Exception {

		return cafeboardDAO.read(bno);
	}

	@Override
	public void update(CafeBoardVO vo) throws Exception {
		cafeboardDAO.update(vo);
	}

	@Override
	public void delete(int bno) throws Exception {
		cafeboardDAO.delete(bno);
	}

	@Override
	public List<CafeBoardVO> listAll() throws Exception {

		return cafeboardDAO.listAll();
	}

	@Override
	public void increaseViewcnt(int b_id, HttpSession session) throws Exception {
		long update_time = 0;

		if (session.getAttribute("update_time_" + b_id) != null) {
			update_time = (long) session.getAttribute("update_time_" + b_id);
		}

		long current_time = System.currentTimeMillis();

		if (current_time - update_time > 5 * 1000) {
			cafeboardDAO.increaseViewcnt(b_id);
			session.setAttribute("update_time_" + b_id, current_time);
		}
	}

}
