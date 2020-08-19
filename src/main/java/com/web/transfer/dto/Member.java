package com.web.transfer.dto;

import java.util.Date;


import org.springframework.lang.NonNull;

public class Member {

	Integer id;

	@NonNull
	String name;

	Date joined;
	
	String email;
	
	
	
	public Member(Integer id, String name, Date joined, String email) {
		super();
		this.id = id;
		this.name = name;
		this.joined = joined;
		this.email = email;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Member() {
		this.id = (int) System.currentTimeMillis();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getJoined() {
		return joined;
	}

	public void setJoined(Date joined) {
		this.joined = joined;
	}
	
}
