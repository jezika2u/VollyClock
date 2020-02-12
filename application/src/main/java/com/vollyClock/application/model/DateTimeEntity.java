package com.vollyClock.application.model;

import java.sql.Date;
import java.sql.Timestamp;
import java.time.Instant;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity(name = "Time")
public class DateTimeEntity {
	
	@Id 
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
	private long id;
	
	@Column(name = "user_id")
	private long userId;

	 
	@Column(name="Time_IN")
	private java.sql.Timestamp timeIn;
	
	
	@Column(name="Time_OUT")
	private java.sql.Timestamp timeOut;


	public long getId() {
		return id;
	}


	public void setId(long id) {
		this.id = id;
	}


	public java.sql.Timestamp getTimeIn() {
		return timeIn;
	}


	public void setTimeIn(java.sql.Timestamp timeIn) {
		this.timeIn = timeIn;
	}


	public java.sql.Timestamp getTimeOut() {
		return timeOut;
	}


	public void setTimeOut(java.sql.Timestamp timeOut) {
		this.timeOut = timeOut;
	}


	public long getUserId() {
		return userId;
	}


	public void setUserId(long userId) {
		this.userId = userId;
	}

	
	
	
	
	
	
	
	
	
}
