package com.sms.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sms.model.UsersModel;

@Repository
@Transactional
public class UsersDaoImpl implements UsersDao {
	
	@Autowired
	private SessionFactory session;
	
	private UsersModel usersModelDetail;

	public void setSession(SessionFactory session) {
		this.session = session;
	}

	public List<UsersModel> getUsersList() {
		return session.getCurrentSession().createQuery("from users").list();
	}

	public boolean delete(UsersModel usersModel) {
		try {
			session.getCurrentSession().delete(usersModel);
		} catch (HibernateException e) {
			return false;
		}
		
		return true;
	}

	public boolean SaveorUpdate(UsersModel usersModel) {
		session.getCurrentSession().saveOrUpdate(usersModel);
		return true;
	}

	public UsersModel doLogin(UsersModel usersModel) {
		Session session1 = session.openSession();
		Transaction tx = session1.beginTransaction();
		String hql = "from com.sms.model.UsersModel as u where u.userName=? and u.userPassword=?";
		try{
	    Query query = session1.createQuery(hql);
	    query.setParameter(0, usersModel.getUserName());
	    query.setParameter(1, usersModel.getUserPassword());
	    usersModel = (UsersModel) query.uniqueResult();
	    tx.commit();
	    session1.close();
		}
		catch(Exception e){
			tx.rollback();
			session1.close();
			e.printStackTrace();
		}
		return usersModel;
	}

	public UsersModel getUserDetails(String userName) {
		Session session1 = session.openSession();
		Transaction tx = session1.beginTransaction();
		String hql = "from com.sms.model.UsersModel as u where u.userName=?";
		try{
		    Query query = session1.createQuery(hql);
		    query.setParameter(0, userName);
		    usersModelDetail = (UsersModel) query.uniqueResult();
		    tx.commit();
		    session1.close();
			}
			catch(Exception e){
				tx.rollback();
				session1.close();
				e.printStackTrace();
			}
			return usersModelDetail;
	}
	
	
	

}
