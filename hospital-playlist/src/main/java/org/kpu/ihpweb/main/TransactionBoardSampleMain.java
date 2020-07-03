package org.kpu.ihpweb.main;

import org.kpu.ihpweb.domain.CafeBoardVO;
import org.kpu.ihpweb.service.CafeBoardService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TransactionBoardSampleMain {

	private static ApplicationContext ctx = null;

	public static void main(String[] args) throws Exception {

		System.out.println("Transaction Test - CafeBoardService create");
		System.out.println("increasepoint in cafeMemberDAO and then create in cafeBoardDAO");
		System.out.println("board create error and roll back increasepoint");

		ctx = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");

		CafeBoardService cafeboardService = ctx.getBean(CafeBoardService.class);

		String registerTestId = "ihp001";
		CafeBoardVO vo = new CafeBoardVO();
		vo.setB_title(
				"Iwanttorollback.Iwanttorollback.Iwanttorollback.Iwanttorollback.Iwanttorollback.Iwanttorollback.Iwanttorollback.Iwanttorollback.");
		vo.setB_main("content");
		vo.setWriter_id(registerTestId);

		try {
			cafeboardService.create(vo);
			System.out.println("Transaction Complelte");
		} catch (Exception e) {
			System.out.println(e);
		}

	}

}
