package com.sms.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="logindetails")
public class UsersModel {
	
	@Id
	@Column(name = "mobilenumber")
	private long mobilenumber;
	
    @NotEmpty
	@Column(name = "password")
	private String password;
    
    @NotEmpty
	@Column(name = "role")
	private String role;

    

	public long getMobilenumber() {
		return mobilenumber;
	}

	public void setMobilenumber(long mobilenumber) {
		this.mobilenumber = mobilenumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
    


}
