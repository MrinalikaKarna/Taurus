package com.sms.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="userdetails")
public class UserDetails {
	
	@Id
	@Column(name = "userid")
	private int userid;
	
    @NotEmpty
	@Column(name = "firstname")
	private String firstname;
    
    @NotEmpty
 	@Column(name = "lastname")
 	private String lastname;
    
    @NotEmpty
 	@Column(name = "address")
 	private String address;
    
    @NotEmpty
	@Column(name = "mobilenumber")
    @GeneratedValue(generator = "newgenerator")
    @GenericGenerator(name="newgenerator",strategy="foreign",parameters={@Parameter(value="usersModel", name="property")} )
	private long mobilenumber;
    
    @NotEmpty
  	@Column(name = "gender")
    private String gender;
    
 
  	@Column(name = "email")
    private String email;
    
    @NotEmpty
  	@Column(name = "class")
    private String userclass;
    
    @NotEmpty
  	@Column(name = "fathersname")
    private String fathersname;
    
    @NotEmpty
  	@Column(name = "mothersname")
    private String mothersname;
    

  	@Column(name = "dateofbirth")
    private Date dateofbirth;
    
 
  	@Column(name = "altmobilenumber")
    private long altmobilenumber;
  	
  	@NotEmpty
  	@Column(name = "userrole")
  	private String userrole;
    
    
    public String getUserrole() {
		return userrole;
	}

	public void setUserrole(String userrole) {
		this.userrole = userrole;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserclass() {
		return userclass;
	}

	public void setUserclass(String userclass) {
		this.userclass = userclass;
	}

	public String getFathersname() {
		return fathersname;
	}

	public void setFathersname(String fathersname) {
		this.fathersname = fathersname;
	}

	public String getMothersname() {
		return mothersname;
	}

	public void setMothersname(String mothersname) {
		this.mothersname = mothersname;
	}

	public Date getDateofbirth() {
		return dateofbirth;
	}

	public void setDateofbirth(Date dateofbirth) {
		this.dateofbirth = dateofbirth;
	}

	public long getAltmobilenumber() {
		return altmobilenumber;
	}

	public void setAltmobilenumber(long altmobilenumber) {
		this.altmobilenumber = altmobilenumber;
	}

	@OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "mobilenumber",referencedColumnName="mobilenumber", insertable=false, updatable=false)
    private UsersModel usersModel;
    

	public UsersModel getUsersModel() {
		return usersModel;
	}

	public void setUsersModel(UsersModel usersModel) {
		this.usersModel = usersModel;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public long getMobilenumber() {
		return mobilenumber;
	}

	public void setMobilenumber(long mobilenumber) {
		this.mobilenumber = mobilenumber;
	}
    
    

}
