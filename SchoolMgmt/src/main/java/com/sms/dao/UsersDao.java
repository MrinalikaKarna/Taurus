package com.sms.dao;

import java.util.List;

import com.sms.model.Leaves;
import com.sms.model.NewsEvent;
import com.sms.model.UserDetails;
import com.sms.model.UsersModel;

public interface UsersDao {
	
	public List<UsersModel> getUsersList();
	public List<NewsEvent> getNewsEventList();
	public boolean delete(UsersModel usersModel);
	public boolean SaveorUpdate(UsersModel usersModel);
	public UsersModel doLogin(UsersModel usersModel);
	public UserDetails getUserDetails(long mobilenumber);
	public boolean saveUserLeaves(Leaves leaves);
	public boolean saveNewsEvent(NewsEvent newsEvent);

}
