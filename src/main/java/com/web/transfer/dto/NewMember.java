package com.web.transfer.dto;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.lang.NonNull;

public class NewMember {
	Integer id;

	@NonNull
	String name;

	String passwd;
	
	String email;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	Date birthday;
	
	String sex;
	
	String [] like;

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

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String [] getLike() {
		return like;
	}

	public void setLike(String [] like) {
		this.like = like;
	}
	
	public List<String> getLikes() {
		if (like.length <= 0) return null;
		return Arrays.asList(like);
	}

	@Override
	public String toString() {
		return "NewMember [id=" + id + ", name=" + name + ", passwd=" + passwd + ", email=" + email + ", birthday="
				+ birthday + ", sex=" + sex + ", like=" + like + "]";
	}


	
}
