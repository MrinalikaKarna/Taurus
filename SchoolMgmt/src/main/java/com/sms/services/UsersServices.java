package com.sms.services;

import java.util.List;

import com.sms.model.Leaves;
import com.sms.model.UserDetails;
import com.sms.model.UsersModel;

public interface UsersServices {
	public List<UsersModel> getUsersList();
	public boolean delete(UsersModel usersModel);
	public boolean SaveorUpdate(UsersModel usersModel);
	public UsersModel doLogin(UsersModel usersModel);
	public UserDetails getUserDetails(long mobilenumber);
	public boolean saveUserLeaves(Leaves leaves);
}
