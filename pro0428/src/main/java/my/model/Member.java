package my.model;

import java.util.Date;

public class Member {
	private String memberId;
	private String password;
	private String name;
	private int age;
	private Date RegisterDate;
	private String[] hobby;
	private String[] sub;
	
	public Member() {
	}

	public Member(String memberId, String password, String name, int age, Date registerDate, String[] hobby, String[] sub) {
		super();
		this.memberId = memberId;
		this.password = password;
		this.name = name;
		this.age = age;
		RegisterDate = registerDate;
		this.hobby = hobby;
		this.sub = sub;
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

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Date getRegisterDate() {
		return RegisterDate;
	}

	public void setRegisterDate(Date registerDate) {
		RegisterDate = registerDate;
	}

	public String[] getHobby() {
		return hobby;
	}

	public void setHobby(String[] hobby) {
		this.hobby = hobby;
	}

	public String[] getSub() {
		return sub;
	}

	public void setSub(String[] sub) {
		this.sub = sub;
	}
	
	
}
