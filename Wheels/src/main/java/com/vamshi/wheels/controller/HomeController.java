package com.vamshi.wheels.controller;

import java.io.IOException;
import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.servlet.ModelAndView;

import com.vamshi.wheels.Service.AddProductService;
import com.vamshi.wheels.Service.CategoryService;
import com.vamshi.wheels.Service.CustomerService;
import com.vamshi.wheels.model.AddProduct;
import com.vamshi.wheels.model.Customer;
@Controller
public class HomeController {
	
	@Autowired
	CustomerService customerService;
	@Autowired
	AddProductService addproductservice;
	@Autowired
	CategoryService categoryService;
	// this is the first mapping of my home page
	@RequestMapping("/")
	public  ModelAndView front()
	{
		System.out.println("First home page() is called");
		return new ModelAndView("Home");
	}
	@RequestMapping("/Home")
	public  ModelAndView frontHome()
	{
		System.out.println("First home page() is called");
		return new ModelAndView("Home");
	}
	@RequestMapping("/login")
	public String loginMethod()
	{
		System.out.println("login");
		return "login";
	}

	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request)
	{
		request.getSession().invalidate();
		System.out.println("logout page called");

		return new ModelAndView("redirect:/Home");
		
	}
	/*@RequestMapping("/userHome")
	public  ModelAndView userPage()
	{
		System.out.println(" user home page() is called");
		return new ModelAndView("userHome");
	}*/
	@RequestMapping("/CustomerValidate")
	public ModelAndView customerCheck(Principal principal) throws JsonGenerationException, JsonMappingException, IOException
	{
		
		List<AddProduct> list=addproductservice.viewProduct();  
  		ObjectMapper mapper=new ObjectMapper();
  		String listJSON=mapper.writeValueAsString(list);
  		System.out.println("view products is working");
  		return new ModelAndView("custHome","listOfProducts",listJSON);
	}
	@RequestMapping("/AdminValidate")
	public ModelAndView adminCheck(Principal principal)
	{
		System.out.println("UserName:" +principal.getName());
		System.out.println("admin is validated");
		return new ModelAndView("AdminValidate");
	}
	
	// when signIn is clicked this method is called 
   /*@RequestMapping("/signIn")
	public ModelAndView signInn()
	{
	   
	   System.out.println("signIn() is called");
		return new ModelAndView("signIn");
	}*/
   /* when signUp is  clicked this method is called Customerkey 
    * takes input values from spring 
    * and customer object carries this to model and saves in DB
    * post method provides security to the username and password*/
   @RequestMapping("/signUp")
	public ModelAndView signUpp()
	{
	   Customer customer=new Customer();
	   System.out.println("signUp() is called");
		return new ModelAndView("signUp","Customerkey",customer);
	}
    /* data from the object is copied from customer object to formal parameter fresh
     * print to to check data get the data from object
      */
   @RequestMapping("/register")
  	public ModelAndView  newRegistration(@Valid@ModelAttribute ("Customerkey") Customer fresh, BindingResult bindingresult )
  	{
	   System.out.println("now im in register method");
  	   if (bindingresult.hasErrors())
  	   {
  		   System.out.println("my if condition is true");
  		   return new ModelAndView("signUp");
  		 
  	   }
  	   System.out.println("UserName:" +fresh.getUsername());
  	   System.out.println("Password:" +fresh.getPassword());
  	   customerService.addCustomer(fresh);
  	   //fresh is  formal parameter of Customer class object
  		System.out.println("customer is added");
  	   return new ModelAndView("signUp");
  	}
   @RequestMapping("/aboutUs")
	public ModelAndView aboutUs()
	{
		System.out.println("I am in aboutUs");
		return new ModelAndView("aboutUs");
	}
  
   @RequestMapping("/categorywise")
	public ModelAndView classic(@RequestParam("category") String category) throws JsonGenerationException, JsonMappingException, IOException
	{
	   System.out.println(category);
	   List<AddProduct> list=categoryService.getItemByCategory(category);
	   ObjectMapper mapper=new ObjectMapper();
	   String listJSON=mapper.writeValueAsString(list);
	   System.out.println(list);
	   System.out.println(listJSON);
		return new ModelAndView("categoryWise","classickey",listJSON);
	}
  
   @RequestMapping("/selectedProduct")
  	public ModelAndView selecPro(@RequestParam("id") String id)
  	{
  		AddProduct addProduct= addproductservice.getProductById(Integer.parseInt(id));
  		return new ModelAndView("selectedProduct","listOfProducts",addProduct);
  	}
  
   
}
