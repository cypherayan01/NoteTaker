package com.entities;

import java.util.Date;
import java.util.Random;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="users")
public class User {
	@Id
	private int userId;
	private String username;
	private String useremail;
	private String userpassword;
	private Date joinDate;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	public String getUsername() {
		return username;
	}
	public User( String username, String useremail, String userpassword, Date joinDate) {
		super();
		this.userId= new Random().nextInt(100000);
		this.username = username;
		this.useremail = useremail;
		this.userpassword = userpassword;
		this.joinDate = joinDate;
	}
	public Date getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getUserpassword() {
		return userpassword;
	}
	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
