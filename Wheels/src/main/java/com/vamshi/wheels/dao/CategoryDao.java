package com.vamshi.wheels.dao;

import java.util.List;

import com.vamshi.wheels.model.AddProduct;

public interface CategoryDao {
	
	List<AddProduct> getItemByCategory(String category);
	
	
}
