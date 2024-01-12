package com.user;

public class User {
	private String uname;
	private String uid;
	private int num;
	
	public User() {
		
	}

	public User(String uname, String uid, int num) {
		super();
		this.uname = uname;
		this.uid = uid;
		this.num = num;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
}
