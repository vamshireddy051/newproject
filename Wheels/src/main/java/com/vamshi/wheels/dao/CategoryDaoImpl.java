package com.vamshi.wheels.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vamshi.wheels.model.AddProduct;
import com.vamshi.wheels.model.Customer;
@Repository
public class CategoryDaoImpl implements CategoryDao{
	@Autowired
	SessionFactory sessionFactory;
	@SuppressWarnings("unchecked")
	public List<AddProduct> getItemByCategory(String category) {
		Session session=sessionFactory.getCurrentSession();
		Transaction transaction=session.beginTransaction();
		System.out.println("session"+category);
		List<AddProduct> list=session.createCriteria(AddProduct.class).add(Restrictions.like("category",category )).list();
	     System.out.println("its working");
	     System.out.println(list);
	     transaction.commit();
		return list;
		
		
	}

	

	
	


	}

