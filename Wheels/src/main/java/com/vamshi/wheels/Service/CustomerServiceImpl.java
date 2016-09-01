package com.vamshi.wheels.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vamshi.wheels.dao.CustomerDao;
import com.vamshi.wheels.model.Customer;
@Service
public class CustomerServiceImpl implements CustomerService {

  @Autowired
  CustomerDao customerdao;
	public void addCustomer(Customer customer) {
	customerdao.addCustomer(customer);
	System.out.println("this is CustomerServiceImpl");
		
	}
	
	public List<Customer> viewCustomer() {
		List<Customer> list=customerdao.viewCustomer();
		return list;
	}


}
