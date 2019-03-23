package com.creative.solutions.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.creative.solutions.dao.UserContactUsDAO;
import com.creative.solutions.entity.ContactUs;

public class UserContactUsDAOImpl implements UserContactUsDAO {

	@Autowired
    private SessionFactory sessionFactory;
	
	@Override
	public void save(ContactUs userContactUs) {
		Session session = sessionFactory.getCurrentSession();
		
        session.persist(userContactUs);
	}

}
