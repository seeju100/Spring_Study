package com.spring.study.vo;

import java.sql.Date;

//member ���̺�
//CREATE TABLE member (
//	id VARCHAR(16) PRIMARY KEY,
//	pass VARCHAR(16) NOT NULL,
//	name VARCHAR(20) NOT NULL,
//	email VARCHAR(50) UNIQUE NOT NULL,
//	date DATE NOT NULL,
//	address VARCHAR(100) NOT NULL,
//	phone VARCHAR(20) NOT NULL,
//	mobile VARCHAR(20) NOT NULL
//);
public class MemberBean {
	private String id;
	private String pass;
	private String name;
	private String email;
	private Date   date;  //java.sql.https://us06web.zoom.us/j/8261848904?pwd=NnhvNTFYaVJOdm5HQWFZS3krc0dwdz09#success
	private String address;
	
	
	
	public MemberBean() {}
	
	
	public MemberBean(String id, String pass, String name, String email, Date date, String address, String phone,
			String mobile) {
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.email = email;
		this.date = date;
		this.address = address;
		this.phone = phone;
		this.mobile = mobile;
	}
	
	
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	private String phone;
	private String mobile;
}

