package com.creative.solutions.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.creative.solutions.dao.UserEnquiryDAO;
import com.creative.solutions.entity.Enquiry;

public class UserEnquiryDAOImpl implements UserEnquiryDAO {
	
	@Autowired
    private SessionFactory sessionFactory;

	@Override
	public void save(Enquiry userEnquiry) {
		Session session = sessionFactory.getCurrentSession();
        session.persist(userEnquiry);
	}

}
