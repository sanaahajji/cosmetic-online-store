/**
 * 
 */
package com.Cosmeticonline.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author 
 *
 */
@Controller
public class forward {

	
	@RequestMapping(value="register", method = RequestMethod.GET)
	   public ModelAndView register(){
	    ModelAndView modelAndView = new ModelAndView("register");
	    return modelAndView;
	   }
	@RequestMapping(value="login", method = RequestMethod.GET)
	   public ModelAndView login(){
	    ModelAndView modelAndView = new ModelAndView("login");
	    return modelAndView;
	   }
	@RequestMapping(value="Bargraph", method = RequestMethod.GET)
	   public ModelAndView Bargraph(){
	    ModelAndView modelAndView = new ModelAndView("Bargraph");
	    return modelAndView;
	   }
	@RequestMapping(value="AddNewProduct", method = RequestMethod.GET)
	   public ModelAndView AddNewProduct(){
	    ModelAndView modelAndView = new ModelAndView("AddNewProduct");
	    return modelAndView;
	   }
	@RequestMapping(value="Productlist", method = RequestMethod.GET)
	   public ModelAndView Productlist(){
	    ModelAndView modelAndView = new ModelAndView("Productlist");
	    return modelAndView;
	   }
	
	@RequestMapping(value="ProductListCust", method = RequestMethod.GET)
	   public ModelAndView ProductListCust(){
	    ModelAndView modelAndView = new ModelAndView("ProductListCust");
	    return modelAndView;
	   }
	@RequestMapping(value="card", method = RequestMethod.GET)
	   public ModelAndView card(){
	    ModelAndView modelAndView = new ModelAndView("card");
	    return modelAndView;
	   }
	@RequestMapping(value="cart", method = RequestMethod.GET)
	   public ModelAndView cart(){
	    ModelAndView modelAndView = new ModelAndView("cart");
	    return modelAndView;
	   }
}
