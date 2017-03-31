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

import com.sms.model.Leaves;
import com.sms.model.UserDetails;
import com.sms.model.UsersModel;

@Repository
@Transactional
public class UsersDaoImpl implements UsersDao {
	
	@Autowired
	private SessionFactory session;
	
	private UsersModel usersModelDetail;
	
	private UserDetails userDetails;

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
		String hql = "from com.sms.model.UsersModel as u where u.mobilenumber=? and u.password=?";
		try{
	    Query query = session1.createQuery(hql);
	    query.setParameter(0, usersModel.getMobilenumber());
	    query.setParameter(1, usersModel.getPassword());
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

	public UserDetails getUserDetails(long mobilenumber) {
		Session session1 = session.openSession();
		Transaction tx = session1.beginTransaction();
		String hql = "from com.sms.model.UserDetails as u where u.mobilenumber=?";
		try{
		    Query query = session1.createQuery(hql);
		    query.setParameter(0, mobilenumber);
		    userDetails = (UserDetails) query.uniqueResult();
		    tx.commit();
		    session1.close();
			}
			catch(Exception e){
				tx.rollback();
				session1.close();
				e.printStackTrace();
			}
			return userDetails;
	}

	public boolean saveUserLeaves(Leaves leaves) {
		Session session1 = session.openSession();
		Transaction tx = session1.beginTransaction();
		try{
		    session1.save(leaves);
		    tx.commit();
		    session1.close();
		    return true;
			}
			catch(Exception e){
				tx.rollback();
				session1.close();
				e.printStackTrace();
				return false;
			}
		
			
	}
	
	
	

}
