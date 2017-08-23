package com.spring.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.model.Cart;


@Repository
public class CartDAOImpl implements CartDAO {
	
	
	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	public boolean saveProductToCart(Cart cart) {
		sessionFactory.getCurrentSession().saveOrUpdate(cart);
		return true;
	}

	
	@Transactional
	public Cart getitem(int prodId, int userId) {
		String hql = "from"+" Cart"+" where userid="+userId+" and productid="+prodId;
		@SuppressWarnings("rawtypes")
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> list = (List<Cart>) query.list();
		if (list!= null && !list.isEmpty()) {
			return list.get(0);
		}
		return null;
	}
	@Transactional
	public List<Cart>getAllCartDetails()
	{
		@SuppressWarnings("unchecked")
		List<Cart>listCart=(List<Cart>)sessionFactory.getCurrentSession()
		.createQuery("from Cart").list();
		
		return listCart;
	}

}
