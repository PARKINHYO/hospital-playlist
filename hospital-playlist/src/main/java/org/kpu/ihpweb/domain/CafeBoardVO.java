package org.kpu.ihpweb.domain;

import java.util.Date;

public class CafeBoardVO {

	private int b_id;
	private String b_title;
	private String b_main;
	private Date date;
	private String writer_id;
	private int b_viewcnt;

	public int getB_viewcnt() {
		return b_viewcnt;
	}

	public void setB_viewcnt(int b_viewcnt) {
		this.b_viewcnt = b_viewcnt;
	}

	public int getB_id() {
		return b_id;
	}

	public void setB_id(int b_id) {
		this.b_id = b_id;
	}

	public String getB_title() {
		return b_title;
	}

	public void setB_title(String b_title) {
		this.b_title = b_title;
	}

	public String getB_main() {
		return b_main;
	}

	public void setB_main(String b_main) {
		this.b_main = b_main;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getWriter_id() {
		return writer_id;
	}

	public void setWriter_id(String writer_id) {
		this.writer_id = writer_id;
	}

	@Override
	public String toString() {
		return "CafeBoardVO [b_id=" + b_id + ", b_title=" + b_title + ", b_main=" + b_main + ", writer_id=" + writer_id
				+ "]";
	}

}
