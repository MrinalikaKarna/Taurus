package com.sms.model;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

public class MarksDetails {
	
	@Id
	@Column(name = "marksid")
	private int marksid;
	
	@ManyToOne
    @JoinColumn(name="userid")
	private UserDetails userDetails;
	
	@ManyToOne
    @JoinColumn(name="examid")
	private ExamDetails examDetails;
	
	@ManyToOne
    @JoinColumn(name="yearclassid")
	private YearClassDetails yearClassDetails;
	
	@Column(name = "english")
	private int english;
	
	@Column(name = "hindi")
	private int hindi;
	
	@Column(name = "maths")
	private int maths;
	
	@Column(name = "science")
	private int science;
	
	@Column(name = "socialstudies")
	private int socialstudies;
	
	@Column(name = "sanskrit")
	private int sanskrit;

	public int getMarksid() {
		return marksid;
	}

	public void setMarksid(int marksid) {
		this.marksid = marksid;
	}

	public UserDetails getUserDetails() {
		return userDetails;
	}

	public void setUserDetails(UserDetails userDetails) {
		this.userDetails = userDetails;
	}

	public ExamDetails getExamDetails() {
		return examDetails;
	}

	public void setExamDetails(ExamDetails examDetails) {
		this.examDetails = examDetails;
	}

	public YearClassDetails getYearClassDetails() {
		return yearClassDetails;
	}

	public void setYearClassDetails(YearClassDetails yearClassDetails) {
		this.yearClassDetails = yearClassDetails;
	}

	public int getEnglish() {
		return english;
	}

	public void setEnglish(int english) {
		this.english = english;
	}

	public int getHindi() {
		return hindi;
	}

	public void setHindi(int hindi) {
		this.hindi = hindi;
	}

	public int getMaths() {
		return maths;
	}

	public void setMaths(int maths) {
		this.maths = maths;
	}

	public int getScience() {
		return science;
	}

	public void setScience(int science) {
		this.science = science;
	}

	public int getSocialstudies() {
		return socialstudies;
	}

	public void setSocialstudies(int socialstudies) {
		this.socialstudies = socialstudies;
	}

	public int getSanskrit() {
		return sanskrit;
	}

	public void setSanskrit(int sanskrit) {
		this.sanskrit = sanskrit;
	}
	
	

}
