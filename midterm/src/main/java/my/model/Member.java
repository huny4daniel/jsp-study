package my.model;

import java.util.Date;

public class Member {
	private String memberId;
	private String password;
	private String name;
	private int grade;
	private Date registerDate; 
	
	public Member() {}

	public Member(String memberId, String password, String name, int grade, Date registerDate) {
		super();
		this.memberId = memberId;
		this.password = password;
		this.name = name;
		this.grade = grade;
		this.registerDate = registerDate;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public Date getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}
	
	

}
