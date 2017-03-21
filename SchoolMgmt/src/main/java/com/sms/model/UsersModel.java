package com.sms.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="users")
public class UsersModel {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "id", length = 11 )
	private int id;
	
    @NotEmpty
	@Column(name = "user_name")
	private String userName;
    
    @NotEmpty
	@Column(name = "user_password")
	private String userPassword;
    
    @NotEmpty
   	@Column(name = "user_address")
    private String userAddress;
    
    @NotEmpty
   	@Column(name = "user_class")
    private String userClass;
    
    @NotEmpty
   	@Column(name = "user_rollno")
    private String userRollNo;
    
    @NotEmpty
   	@Column(name = "user_DOB")
    private String userDOB;
    

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserClass() {
		return userClass;
	}

	public void setUserClass(String userClass) {
		this.userClass = userClass;
	}

	public String getUserRollNo() {
		return userRollNo;
	}

	public void setUserRollNo(String userRollNo) {
		this.userRollNo = userRollNo;
	}

	public String getUserDOB() {
		return userDOB;
	}

	public void setUserDOB(String userDOB) {
		this.userDOB = userDOB;
	}
	
	

}
