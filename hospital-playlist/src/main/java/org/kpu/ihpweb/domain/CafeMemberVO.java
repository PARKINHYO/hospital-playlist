package org.kpu.ihpweb.domain;

import java.util.Date;

public class CafeMemberVO {

	private String id;
	private String passwd;
	private String username;
	private String email;
	private Date regDate;
	private int mpoint;

	public String getId() {
		return id;
	}

	public int getMpoint() {
		return mpoint;
	}

	public void setMpoint(int mpoint) {
		this.mpoint = mpoint;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "CafeMemberVO [id=" + id + ", passwd=" + passwd + ", username=" + username + ", email=" + email
				+ ", mpoint=" + mpoint + "]";
	}

}
