package edu.kh.user.model.vo;

public class UserDTO {
	/*
	 * private int user_no; private String user_id; private String user_name;
	 * private int user_age;
	 * 
	 * public UserDTO(int user_no, String user_id, String user_name, int user_age) {
	 * super(); this.user_no = user_no; this.user_id = user_id; this.user_name =
	 * user_name; this.user_age = user_age; }
	 * 
	 * public int getUser_no() { return user_no; }
	 * 
	 * public void setUser_no(int user_no) { this.user_no = user_no; }
	 * 
	 * public String getUser_id() { return user_id; }
	 * 
	 * public void setUser_id(String user_id) { this.user_id = user_id; }
	 * 
	 * public String getUser_name() { return user_name; }
	 * 
	 * public void setUser_name(String user_name) { this.user_name = user_name; }
	 * 
	 * public int getUser_age() { return user_age; }
	 * 
	 * public void setUser_age(int user_age) { this.user_age = user_age; }
	 */
	private int userNo;
	private String userId;
	private String userName;
	private int userAge;
	
	public UserDTO(int userNo, String userId, String userName, int userAge) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userName = userName;
		this.userAge = userAge;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getUserAge() {
		return userAge;
	}

	public void setUserAge(int userAge) {
		this.userAge = userAge;
	}

	@Override
	public String toString() {
		return "UserDTO [userNo=" + userNo + ", userId=" + userId + ", userName=" + userName + ", userAge=" + userAge
				+ "]";
	}
	
	
	/*
	 * public String toString () { return "UserDTO [user_no= " + user_no +
	 * ", user_id=" + user_id + ", user_name" + user_name +", user_age="
	 * +user_age+"]"; }
	 */
}
