package org.kpu.ihpweb.service;

import javax.servlet.http.HttpSession;

import org.kpu.ihpweb.domain.CafeMemberVO;
import org.kpu.ihpweb.persistence.CafeMemberDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CafeMemberServiceImpl implements CafeMemberService {

	@Autowired
	private CafeMemberDAO cafememberDAO;

	@Override
	public void register(CafeMemberVO vo) throws Exception {
		cafememberDAO.register(vo);
		cafememberDAO.increasePoint(vo);
	}

	@Override
	public CafeMemberVO login(CafeMemberVO vo, HttpSession session) throws Exception {

		session.setAttribute("id", vo.getId());
		return cafememberDAO.login(vo);
	}

	@Override
	public void memberUpdate(CafeMemberVO vo) throws Exception {

		cafememberDAO.memberUpdate(vo);
	}

	@Override
	public void memberDelete(CafeMemberVO vo) throws Exception {
		cafememberDAO.memberDelete(vo);
	}

	@Override
	public CafeMemberVO memberRead(String id) throws Exception {
		return cafememberDAO.read(id);
	}
	
	

}
