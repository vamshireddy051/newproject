package com.vamshi.wheels.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vamshi.wheels.dao.addProductDao;
import com.vamshi.wheels.model.AddProduct;

@Service
public class AddProductServiceImpl implements AddProductService {
	@Autowired
	addProductDao addProductdao;
	public void addProduct(AddProduct addProduct) {
		addProductdao.addProduct(addProduct);
		System.out.println("this is addProductServiceImpl");
		
	}
	  
		
		public List<AddProduct> viewProduct() {
			List<AddProduct> list=addProductdao.viewProduct();
			return list;
		}


	
		public  void deleteProduct(int id) {
		addProductdao.deleteProduct(id);
			
		}


	
		public AddProduct getProductById(int id) {
	
			return addProductdao.getProductById(id);
		}


		
		public void updateProduct(AddProduct updateProd) {
	       addProductdao.updateProduct(updateProd);
			
		}

	
		

}
