package com.sms.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="examdetails")
public class ExamDetails {
	
	@Id
	@Column(name = "examid")
	private int examid;
	
	
    @NotEmpty
	@Column(name = "examname")
	private String examname;


	public int getExamid() {
		return examid;
	}


	public void setExamid(int examid) {
		this.examid = examid;
	}


	public String getExamname() {
		return examname;
	}


	public void setExamname(String examname) {
		this.examname = examname;
	}
    
    

}
