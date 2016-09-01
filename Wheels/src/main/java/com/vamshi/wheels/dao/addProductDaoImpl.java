package com.vamshi.wheels.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vamshi.wheels.model.AddProduct;
import com.vamshi.wheels.model.Customer;
@Repository
public class addProductDaoImpl implements addProductDao {


	
		@Autowired
		SessionFactory sessionFactory;
	    public void addProduct(AddProduct addProduct)
	    {
		Session session=sessionFactory.getCurrentSession();
		Transaction transaction=session.beginTransaction();
		session.save(addProduct);
		transaction.commit();
		
	}


	public List<AddProduct> viewProduct() {
		Session session=sessionFactory.getCurrentSession();
		Transaction transaction=session.beginTransaction();
		List<AddProduct> list=session.createCriteria(AddProduct.class).list();
	     transaction.commit();
		return list;
	}



	public void deleteProduct(int id) {
		Session session=sessionFactory.getCurrentSession();
		Transaction transaction=session.beginTransaction();
		AddProduct addProd=session.get(AddProduct.class, new Integer(id) );
		session.delete(addProd);
	    transaction.commit();
	    System.out.println("item deleted");
		
	}


	
	public AddProduct getProductById(int id) {
		Session session=sessionFactory.getCurrentSession();
		Transaction transaction=session.beginTransaction();
		AddProduct addProd=session.load(AddProduct.class, new Integer(id) );
		return addProd;
	}



	public void updateProduct(AddProduct updateProd) {
		Session session=sessionFactory.getCurrentSession();
		Transaction transaction=session.beginTransaction();
		session.update(updateProd);
		transaction.commit();
		System.out.println("updated successfully");
	}



}
