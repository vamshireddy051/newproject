package com.vamshi.wheels.Service;

import java.util.List;

import com.vamshi.wheels.model.Customer;

public interface CustomerService {
	public void addCustomer(Customer customer);
	List<Customer> viewCustomer();
	

}
