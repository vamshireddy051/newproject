package com.vamshi.wheels.controller;

import java.io.File;
import java.io.IOException;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.vamshi.wheels.Service.AddProductService;
import com.vamshi.wheels.Service.CustomerService;
import com.vamshi.wheels.model.Customer;
import com.vamshi.wheels.model.AddProduct;

@Controller
public class AdminController {
	@Autowired
	AddProductService addproductservice;
	@Autowired
	CustomerService customerService;
	@RequestMapping("/AddProduct")
	public ModelAndView addProduct()
	{
		AddProduct addProduct=new AddProduct();
		System.out.println("add new product");
		return new ModelAndView("addProduct","addNewItem",addProduct);
	}
	
	
	
    @RequestMapping("/ViewCustomers")
	public ModelAndView ViewCustomer() throws JsonGenerationException, JsonMappingException, IOException 
	{
	    List<Customer> list=customerService.viewCustomer();  
		System.out.println("now im in view customer method in admin controller");
		System.out.println("list:"+list);
		ObjectMapper mapper=new ObjectMapper();
		String listJSON=mapper.writeValueAsString(list);
		System.out.println();
		return new ModelAndView("ViewCustomers","listOfCustomers",listJSON);
		
		
	}
    @RequestMapping("/addProductItem")
  	public String  newProduct( @Valid@ModelAttribute ("addNewItem") AddProduct addProduct,
  			@RequestParam("file") MultipartFile file,
  			BindingResult bindingresult ) throws IllegalStateException, IOException
  	{
	   System.out.println("now im in addproduct method");
  	   if (bindingresult.hasErrors())
  	   {
  		   System.out.println("my if condition is true in addproduct it has errors");
  		   
  		   return "redirect:/addProduct";
  		 
  	   }
  	   System.out.println("im in add product method");
  	 addproductservice.addProduct(addProduct);
  	 MultipartFile productImage=addProduct.getFile();
  	// String rootDirectory = request.getSession().getServletContext().getRealPath("/");
  	 //return new ModelAndView("success");
  	Path path = Paths.get("E://My project//Wheels//src//main//webapp//resources//images//"+addProduct.getId()+".jpg");
  	if (productImage != null && !productImage.isEmpty()) 
       {
        	productImage.transferTo(new File(path.toString()));
                   	
        	System.out.println("image added");
        }
       System.out.println("product saved");
       return  "redirect:/AddProduct";
             	 
  	}
    
    @RequestMapping("/ViewProducts")
  	public ModelAndView  productList() throws JsonGenerationException, JsonMappingException, IOException 
  	{
  	    List<AddProduct> list=addproductservice.viewProduct();  
  		System.out.println("now im in view customer method in admin controller");
  		System.out.println("list:"+list);
  		ObjectMapper mapper=new ObjectMapper();
  		String listJSON=mapper.writeValueAsString(list);
  		System.out.println("view products is working");
  		return new ModelAndView("ViewProducts","listOfProducts",listJSON);
  		}
  	 
    @RequestMapping("/deleteProduct")
    public String deleteProd(@RequestParam("id") int id)
    {
    	addproductservice.deleteProduct(id);
		return "redirect:/ViewProducts";
    	
    }
	 
    @RequestMapping("/editProduct")
    public ModelAndView editProd(@RequestParam("id") int id)
    {
    	System.out.println("prod id:" +id);
		AddProduct addProd=addproductservice.getProductById(id);
		System.out.println("itemName:" +addProd.getName());
    	return new ModelAndView ("editedProduct","editProd",addProd);
    	
    }
   
    @RequestMapping("/updatedProduct")
    public String updateProd(@RequestParam("id") String id,@RequestParam("name") String name,@RequestParam("description") String descrition,@RequestParam("category") String category,@RequestParam("price") String price)
    {
    	int id1=Integer.parseInt(id);
		AddProduct updateProd=addproductservice.getProductById(id1);
		updateProd.setName(name);
		updateProd.setDescription(descrition);
		updateProd.setCategory(category);
		updateProd.setPrice(Float.parseFloat(price));
		addproductservice.updateProduct(updateProd);
    	return  "redirect:/ViewProducts";
    	
    	
    }
    
}
