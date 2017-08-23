package com.spring.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.Users;

@Repository("userDAOImpl")
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public UserDAOImpl() {
		this.sessionFactory = sessionFactory;

	}

	@Transactional
	public boolean saveUser(Users users) {

		sessionFactory.getCurrentSession().saveOrUpdate(users);

		return true;
	}

	public List<Users> list() {
		
		return null;
	}

	public Users getUserById(int user_id) {
		
		return null;
	}


	
	@SuppressWarnings({ "deprecation", "unchecked" })
	@Transactional
	public Users get(String email) {
		Criteria c = sessionFactory.getCurrentSession().createCriteria(Users.class);
		c.add(Restrictions.eq("email", email));
		List<Users> listUser = (List<Users>) c.list();

		if (listUser != null && !listUser.isEmpty()) {
			return listUser.get(0);
		} else {
			return null;
		}

	}

	public void removeUserById(int user_id) {
		// TODO Auto-generated method stub
		
	}


}
