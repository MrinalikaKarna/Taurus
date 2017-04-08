package com.sms.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="classdetails")
public class ClassDetails {
	
	@Id
	@Column(name = "classid")
	@NotNull
	private int classid;
	
    
	@Column(name = "classname")
	private String classname;


	public int getClassid() {
		return classid;
	}


	public void setClassid(int classid) {
		this.classid = classid;
	}


	public String getClassname() {
		return classname;
	}


	public void setClassname(String classname) {
		this.classname = classname;
	}
	
	

}
