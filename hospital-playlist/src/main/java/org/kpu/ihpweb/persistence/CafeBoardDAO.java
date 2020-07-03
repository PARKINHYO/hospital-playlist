package org.kpu.ihpweb.persistence;

import java.util.List;

import org.kpu.ihpweb.domain.CafeBoardVO;

public interface CafeBoardDAO {

	public void create(CafeBoardVO vo) throws Exception;

	public CafeBoardVO read(int bno) throws Exception;

	public void update(CafeBoardVO vo) throws Exception;

	public void delete(int bno) throws Exception;

	public List<CafeBoardVO> listAll() throws Exception;

	public void increaseViewcnt(int bno) throws Exception;
}
