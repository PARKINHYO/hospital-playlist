package org.kpu.ihpweb.service;

import javax.servlet.http.HttpSession;

import org.kpu.ihpweb.domain.CafeMemberVO;

public interface CafeMemberService {

	public void register(CafeMemberVO vo) throws Exception;

	public CafeMemberVO login(CafeMemberVO vo, HttpSession session) throws Exception;

	public void memberUpdate(CafeMemberVO vo) throws Exception;

	public void memberDelete(CafeMemberVO vo) throws Exception;

	public CafeMemberVO memberRead(String id) throws Exception;

}
