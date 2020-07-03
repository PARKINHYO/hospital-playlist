package org.kpu.ihpweb.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.kpu.ihpweb.domain.CafeBoardVO;

public interface CafeBoardService {
	public void create(CafeBoardVO vo) throws Exception;

	public CafeBoardVO read(int bno) throws Exception;

	public void update(CafeBoardVO vo) throws Exception;

	public void delete(int bno) throws Exception;

	public List<CafeBoardVO> listAll() throws Exception;

	public void increaseViewcnt(int bno, HttpSession session) throws Exception;
}
