package com.vamshi.wheels.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vamshi.wheels.model.Customer;
import com.vamshi.wheels.model.UserRole;
@Repository
public class CustomerDaoImpl implements CustomerDao {


	
		@Autowired
		SessionFactory sessionFactory;
		public void addCustomer(Customer customer) {
		Session session=sessionFactory.getCurrentSession();
		Transaction transaction=session.beginTransaction();
		customer.setEnabled(true);
		session.save(customer);
		System.out.println("now im in customerDaoImpl");
		UserRole userRole=new UserRole();
		userRole.setAuthority("ROLE_USER");
		userRole.setId(customer.getId());
		
		session.save(userRole);
		transaction.commit();
		
	}
	
		public List<Customer> viewCustomer() {
	
			Session session=sessionFactory.getCurrentSession();
			Transaction transaction=session.beginTransaction();
			List<Customer> list=session.createCriteria(Customer.class).list();
		     transaction.commit();
			return list;
		}
	

}
