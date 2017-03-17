package com.sms.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sms.dao.UsersDao;
import com.sms.model.UsersModel;

@Service("usersServices")
public class UsersServiceImpl implements UsersServices {
	
	@Autowired
	UsersDao usersDao;

	public List<UsersModel> getUsersList() {
		return usersDao.getUsersList();
	}

	public boolean delete(UsersModel usersModel) {
		return usersDao.delete(usersModel);
	}

	public boolean SaveorUpdate(UsersModel usersModel) {
        return usersDao.SaveorUpdate(usersModel);
	}

	public UsersModel doLogin(UsersModel usersModel) {
		// TODO Auto-generated method stub
		return usersDao.doLogin(usersModel);
	}

}
