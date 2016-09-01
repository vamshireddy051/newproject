package com.vamshi.wheels.Service;

import java.util.List;

import com.vamshi.wheels.model.AddProduct;

public interface CategoryService {
	List<AddProduct> getItemByCategory(String category);

}
