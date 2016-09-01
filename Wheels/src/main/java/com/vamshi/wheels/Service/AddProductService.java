package com.vamshi.wheels.Service;

import java.util.List;

import com.vamshi.wheels.model.AddProduct;

public interface AddProductService {
	public void addProduct(AddProduct addProduct);
	List<AddProduct> viewProduct();
	void deleteProduct(int id);
	AddProduct getProductById(int id);
	void updateProduct(AddProduct updateProd);
}
