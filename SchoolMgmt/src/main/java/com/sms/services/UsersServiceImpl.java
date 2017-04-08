package com.sms.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sms.dao.UsersDao;
import com.sms.model.ClassDetails;
import com.sms.model.Leaves;
import com.sms.model.NewsEvent;
import com.sms.model.UserDetails;
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
	


	public UserDetails getUserDetails(long mobilenumber) {
		return usersDao.getUserDetails(mobilenumber);
	}

	public boolean saveUserLeaves(Leaves leaves) {
		return usersDao.saveUserLeaves(leaves);
	}

	public List<NewsEvent> getNewsEventList() {
		return usersDao.getNewsEventList();
	}

	public boolean saveNewsEvent(NewsEvent newsEvent) {
		return  usersDao.saveNewsEvent(newsEvent);
	}

	public List<ClassDetails> getClassDetailsList() {
		
		return usersDao.getClassDetailsList();
	}

	public boolean saveUserUpdateDetails(UserDetails userDetails) {
		return usersDao.saveUserUpdateDetails(userDetails);
	}

}
