package org.kpu.ihpweb.persistence;

import org.kpu.ihpweb.domain.CafeMemberVO;

public interface CafeMemberDAO {

	public void register(CafeMemberVO vo) throws Exception;

	public CafeMemberVO login(CafeMemberVO vo) throws Exception;

	public void memberUpdate(CafeMemberVO vo) throws Exception;

	public void memberDelete(CafeMemberVO vo) throws Exception;

	public void increasePoint(CafeMemberVO vo) throws Exception;

	public CafeMemberVO read(String id) throws Exception;

}
