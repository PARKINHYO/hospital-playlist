package org.kpu.ihpweb.transaction.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.kpu.ihpweb.domain.CafeMemberVO;
import org.kpu.ihpweb.persistence.CafeMemberDAO;
import org.kpu.ihpweb.service.CafeMemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:/applicationContext.xml" })
public class CafeMemberDaoServiceTest {

	@Autowired
	private CafeMemberService service;

	@Autowired
	private CafeMemberDAO dao;

	private static Logger logger = LoggerFactory.getLogger(CafeMemberDaoServiceTest.class);

	@Test
	public void testReadByid() throws Exception {
		CafeMemberVO vo;
		vo = dao.read("ihp001");
		logger.info(vo.toString());
	}

	@Test
	public void testRegister() throws Exception {
		CafeMemberVO vo2 = new CafeMemberVO();
		vo2.setId("testid");
		vo2.setPasswd("testpasswd");
		vo2.setUsername("testname");
		vo2.setEmail("testemail@test.com");
		service.register(vo2);

	}

}
