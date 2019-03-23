package com.creative.solutions.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "UserDetails")
public class Enquiry {
	private String name;
	private String email;
	private String phoneNumber;
	private String college;
	private String comment;
	private String fromTime;
	private String toTime;
	
	@Column(name = "name", length = 20, nullable = true)
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@Id
	@Column(name = "email", length = 20, nullable = true)
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Column(name = "phoneNumber", length = 20, nullable = true)
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	@Column(name = "college", length = 20, nullable = true)
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	
	@Column(name = "fromTime", length = 20, nullable = true)
	public String getFromTime() {
		return fromTime;
	}
	
	public void setFromTime(String fromTime) {
		this.fromTime = fromTime;
	}
	
	@Column(name = "toTime", length = 20, nullable = true)
	public String getToTime() {
		return toTime;
	}
	public void setToTime(String toTime) {
		this.toTime = toTime;
	}
	
	@Column(name = "comment", length = 20, nullable = true)
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
}
