package com.sms.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "blogpoststore")
public class BlogPostStore {
	
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name = "blog_id")
	private int id;
	
	@NotEmpty
	@Column(name = "blogtitle")
	private String blogtitle;
	
	@NotEmpty
	@Column(name = "blogbody")    
	private String blogbody;
	 
	@ManyToOne
    @JoinColumn(name="userid")   
	private UserDetails userDetails;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBlogtitle() {
		return blogtitle;
	}

	public void setBlogtitle(String blogtitle) {
		this.blogtitle = blogtitle;
	}

	public String getBlogbody() {
		return blogbody;
	}

	public void setBlogbody(String blogbody) {
		this.blogbody = blogbody;
	}

	public UserDetails getUserDetails() {
		return userDetails;
	}

	public void setUserDetails(UserDetails userDetails) {
		this.userDetails = userDetails;
	}
	
	

}
