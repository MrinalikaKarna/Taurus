package com.sms.dao;

import java.util.List;

import com.sms.model.UsersModel;

public interface UsersDao {
	
	public List<UsersModel> getUsersList();
	public boolean delete(UsersModel usersModel);
	public boolean SaveorUpdate(UsersModel usersModel);
	public UsersModel doLogin(UsersModel usersModel);
	public UsersModel getUserDetails(String userName);

}
