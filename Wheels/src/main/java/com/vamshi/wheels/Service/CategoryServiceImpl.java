package com.vamshi.wheels.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vamshi.wheels.dao.CategoryDao;
import com.vamshi.wheels.model.AddProduct;
import com.vamshi.wheels.model.Customer;
@Service
public class CategoryServiceImpl implements CategoryService{

	@Autowired
	CategoryDao categoryDao;

	public List<AddProduct> getItemByCategory(String category) {
		
		List<AddProduct> list=categoryDao.getItemByCategory(category);
		
		return list;
	}
	
		
}
	