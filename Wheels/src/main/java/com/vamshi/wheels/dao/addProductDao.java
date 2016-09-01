package com.vamshi.wheels.dao;

import java.util.List;

import com.vamshi.wheels.model.AddProduct;
import com.vamshi.wheels.model.Customer;

public interface addProductDao {


	public void addProduct(AddProduct addProduct);
	List<AddProduct> viewProduct();
	void deleteProduct(int id);
    AddProduct getProductById(int id);
    void updateProduct(AddProduct updateProd);
}
