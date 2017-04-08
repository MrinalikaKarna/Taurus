package com.sms.services;

import java.util.List;

import com.sms.model.ClassDetails;
import com.sms.model.Leaves;
import com.sms.model.NewsEvent;
import com.sms.model.UserDetails;
import com.sms.model.UsersModel;

public interface UsersServices {
	public List<UsersModel> getUsersList();
	public List<NewsEvent> getNewsEventList();
	public List<ClassDetails> getClassDetailsList();
	public boolean delete(UsersModel usersModel);
	public boolean SaveorUpdate(UsersModel usersModel);
	public UsersModel doLogin(UsersModel usersModel);
	public UserDetails getUserDetails(long mobilenumber);
	public boolean saveUserLeaves(Leaves leaves);
	public boolean saveNewsEvent(NewsEvent newsEvent);
	public boolean saveUserUpdateDetails(UserDetails userDetails);
}
