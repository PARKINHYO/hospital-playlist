package org.kpu.ihpweb.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.kpu.ihpweb.domain.CafeBoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CafeBoardDAOImpl implements CafeBoardDAO {

	@Autowired
	SqlSession sqlSession;

	private static final String namespace = "org.kpu.ihpweb.mapper.CafeBoardMapper";

	@Override
	public void create(CafeBoardVO vo) throws Exception {

		sqlSession.insert(namespace + ".insert", vo);
	}

	@Override
	public CafeBoardVO read(int bno) throws Exception {
		return sqlSession.selectOne(namespace + ".view", bno);

	}

	@Override
	public void update(CafeBoardVO vo) throws Exception {
		sqlSession.update(namespace + ".updateArticle", vo);

	}

	@Override
	public void delete(int bno) throws Exception {
		sqlSession.delete(namespace + ".deleteArticle", bno);

	}

	@Override
	public List<CafeBoardVO> listAll() throws Exception {

		return sqlSession.selectList(namespace + ".listAll");
	}

	@Override
	public void increaseViewcnt(int bno) throws Exception {
		sqlSession.update(namespace + ".increaseViewcnt", bno);

	}

}
