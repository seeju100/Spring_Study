package com.spring.study.vo;
import java.sql.Date;
 /*CREATE TABLE news(
	  	num INT PRIMARY KEY,
	  	name VARCHAR(16) NOT NULL,
	  	pass VARCHAR(16) NOT NULL,
	  	subject VARCHAR(50) NOT NULL,
	  	content VARCHAR(2000) NOT NULL,
	  	date DATE NOT NULL,
	  	readcount INT NOT NULL
	  	);*/

public class publicDTO {
	private int num;
	private String name;
	private String pass;
	private String subject;
	private String content;
	private Date date;
	private int readcount;
	
	public publicDTO() {}
	
	public publicDTO(int num, String name, String pass, String subject, String content, Date date, int readcount) {
		super();
		this.num = num;
		this.name = name;
		this.pass = pass;
		this.subject = subject;
		this.content = content;
		this.date = date;
		this.readcount = readcount;
	}



	public int getNum() {
		return num;
	}



	public void setNum(int num) {
		this.num = num;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getPass() {
		return pass;
	}



	public void setPass(String pass) {
		this.pass = pass;
	}



	public String getSubject() {
		return subject;
	}



	public void setSubject(String subject) {
		this.subject = subject;
	}



	public String getContent() {
		return content;
	}



	public void setContent(String content) {
		this.content = content;
	}



	public Date getDate() {
		return date;
	}



	public void setDate(Date date) {
		this.date = date;
	}



	public int getReadcount() {
		return readcount;
	}



	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}



	@Override
	public String toString() {
		return "publicDTO [num=" + num + ", name=" + name + ", pass=" + pass + ", subject=" + subject + ", content="
				+ content + ", date=" + date + ", readcount=" + readcount + "]";
	}
	
	
	
	
}
