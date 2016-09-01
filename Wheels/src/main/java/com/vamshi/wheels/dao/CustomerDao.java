package com.vamshi.wheels.dao;

import java.util.List;

import com.vamshi.wheels.model.Customer;

public interface CustomerDao {
	
	public void addCustomer(Customer customer);
	List<Customer> viewCustomer();

}
