package com.sms.services;

import java.util.List;

import com.sms.model.UsersModel;

public interface UsersServices {
	public List<UsersModel> getUsersList();
	public boolean delete(UsersModel usersModel);
	public boolean SaveorUpdate(UsersModel usersModel);
	public UsersModel doLogin(UsersModel usersModel);
	public UsersModel getUserDetails(String userName);
}
