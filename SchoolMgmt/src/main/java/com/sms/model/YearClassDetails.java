package com.sms.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="classdetails")
public class YearClassDetails {
	
	@Id
	@Column(name = "yearclassid")
	private int yearclassid;
	
	@ManyToOne
    @JoinColumn(name="classid")
    private ClassDetails classDetails;
    
	@ManyToOne
    @JoinColumn(name="yearid")
    private YearDetails yearDetails;

	public int getYearclassid() {
		return yearclassid;
	}

	public void setYearclassid(int yearclassid) {
		this.yearclassid = yearclassid;
	}

	public ClassDetails getClassDetails() {
		return classDetails;
	}

	public void setClassDetails(ClassDetails classDetails) {
		this.classDetails = classDetails;
	}

	public YearDetails getYearDetails() {
		return yearDetails;
	}

	public void setYearDetails(YearDetails yearDetails) {
		this.yearDetails = yearDetails;
	}
	
	

}
