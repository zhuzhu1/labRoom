package com.stuman.domain;

import java.util.Date;

/**
 * Admin generated by MyEclipse Persistence Tools
 */

public class Admin implements java.io.Serializable {

	// Fields

	private String id;

	private String name;

	private String password;

	private Date registerTime;

	// Constructors

	/** default constructor */
	public Admin() {
	}

	/** minimal constructor */
	public Admin(String id, String password) {
		this.id = id;
		this.password = password;
	}

	/** full constructor */
	public Admin(String id, String name, String password, Date registerTime) {
		this.id = id;
		this.name = name;
		this.password = password;
		this.registerTime = registerTime;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getRegisterTime() {
		return this.registerTime;
	}

	public void setRegisterTime(Date registerTime) {
		this.registerTime = registerTime;
	}

}