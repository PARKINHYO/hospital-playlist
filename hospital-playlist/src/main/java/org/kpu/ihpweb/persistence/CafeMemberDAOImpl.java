package org.kpu.ihpweb.persistence;

import org.apache.ibatis.session.SqlSession;
import org.kpu.ihpweb.domain.CafeMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CafeMemberDAOImpl implements CafeMemberDAO {

	@Autowired
	SqlSession sqlSession;

	private static final String namespace = "org.kpu.ihpweb.mapper.CafeMemberMapper";

	@Override
	public void register(CafeMemberVO vo) throws Exception {
		sqlSession.insert(namespace + ".register", vo);

	}

	@Override
	public CafeMemberVO login(CafeMemberVO vo) throws Exception {

		return sqlSession.selectOne(namespace + ".login", vo);
	}

	@Override
	public void memberUpdate(CafeMemberVO vo) throws Exception {

		sqlSession.update(namespace + ".memberUpdate", vo);
	}

	@Override
	public void memberDelete(CafeMemberVO vo) throws Exception {
		sqlSession.delete(namespace + ".memberDelete", vo);
	}

	@Override
	public void increasePoint(CafeMemberVO vo) throws Exception {
		sqlSession.update(namespace + ".registerPoint", vo);
	}

	@Override
	public CafeMemberVO read(String id) throws Exception {
		return sqlSession.selectOne(namespace + ".selectByid", id);
	};

}
