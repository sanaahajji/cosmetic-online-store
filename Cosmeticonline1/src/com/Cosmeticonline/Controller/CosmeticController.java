/**
 * 
 */
package com.Cosmeticonline.Controller;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.Cosmeticonline.ServiceInterface.CosmeticServiceInterface;
import com.Cosmeticonline.pojo.Product;
import com.Cosmeticonline.pojo.Users;
import com.Cosmeticonline.pojo.buyproduct;

/**
 * @author sanaa 
 *
 */
@Controller
public class CosmeticController {

	@Autowired
	CosmeticServiceInterface cserviceIntf;

	@RequestMapping(value = "/registerUser", method = RequestMethod.POST)
	public ModelAndView registerUsers(HttpServletRequest request,
			HttpServletResponse response, @ModelAttribute Users userdetailsobj) {
		int id = 0;
		String message = "";
		HttpSession session = request.getSession(true);
		try {
			userdetailsobj.setUstatus("Active");
			userdetailsobj.setUtype("user");

			id = cserviceIntf.UserInteration(userdetailsobj);
			if (id > 0) {

				message = "Registered Succsessfully";
				return new ModelAndView("login", "message", message);
			} else {
				message = "userid password incorrect";
				return new ModelAndView("login", "message", message);
			}
		}

		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return null;
	}

	@RequestMapping(value = "/loginuser", method = RequestMethod.POST)
	public ModelAndView loginuser(HttpServletRequest request,
			HttpServletResponse response, @ModelAttribute Users userdetailsobj) {
		int id = 0;
		String message = "";
		HttpSession session = request.getSession(true);
		List<Users> udata = null;
		Users userdata = new Users();
		List<buyproduct> buyproductcart = null;
		List<buyproduct>totalofcart=null;
		int cartvalue=0;
		try {
			String Email = request.getParameter("uemail");
			String Password = request.getParameter("upassword");

			userdetailsobj.setUemail(Email);
			userdetailsobj.setUpassword(Password);

			udata = cserviceIntf.loginuser(userdetailsobj);
			for (Iterator iterator = udata.iterator(); iterator.hasNext();) {
				Users users = (Users) iterator.next();

				userdata.setUid(users.getUid());
				userdata.setUfname(users.getUfname());
				userdata.setUlastname(users.getUlastname());
				userdata.setUemail(users.getUemail());
				userdata.setUcontactnumber(users.getUcontactnumber());
				userdata.setUtype(users.getUtype());
			}
			if (udata.isEmpty()) {
				message = "SomeThing went Wrong.";
				return new ModelAndView("login", "message", message);
			} else {
				if(userdata.getUtype().equalsIgnoreCase("user"))
				{
					buyproductcart=cserviceIntf.listofbuyincart(userdata.getUid());
					int cartnumber=buyproductcart.size();
					session.removeAttribute("cartnumber");
					session.setAttribute("cartnumber", cartnumber);
					
					totalofcart=cserviceIntf.totalofcart(userdata.getUid());
					
					session.removeAttribute("totalofcart");
					session.setAttribute("totalofcart", totalofcart);
				}
				session.removeAttribute("userdata");
				session.setAttribute("userdata", userdata);
				return new ModelAndView("Home");
			}
		}

		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return null;
	}

	@RequestMapping(value = "/addnewprod", method = RequestMethod.POST)
	public ModelAndView addnewprod(HttpServletRequest request,
			HttpServletResponse response, @ModelAttribute Users userdetailsobj,
			@ModelAttribute Product productobj) {
		int id = 0;
		String message = "";
		HttpSession session = request.getSession(true);
		List<Product> ProductList = null;
		try {
			ProductList = cserviceIntf.ProductInsert(productobj);
			System.out.println("----------------"+ProductList.size());
			return new ModelAndView("Productlist", "ProductList", ProductList);
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return null;
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request,
			HttpServletResponse response, @ModelAttribute Users userdetailsobj,
			@ModelAttribute Product productobj) {
		List<Product> ProductList = null;
		HttpSession session = request.getSession(true);
		try {
			session.invalidate();
			ProductList = cserviceIntf.productlist();
			return new ModelAndView("index", "ProductList", ProductList);

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return null;
	}

	@RequestMapping(value = "/listofprod", method = RequestMethod.GET)
	public ModelAndView listofprod(HttpServletRequest request,
			HttpServletResponse response, @ModelAttribute Users userdetailsobj,
			@ModelAttribute Product productobj) {
		List<Product> ProductList = null;
		HttpSession session = request.getSession(true);
		try {
			System.out.println("in gettttttttttttttt");
			ProductList = cserviceIntf.productlist();
			return new ModelAndView("Productlist", "ProductList", ProductList);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return null;
	}

	
	@RequestMapping(value="index", method = RequestMethod.GET)
	   public ModelAndView showLoginPage(){
		List<Product> ProductList = null;
		ProductList = cserviceIntf.productlist();
	    ModelAndView modelAndView = new ModelAndView("index","ProductList", ProductList);
	    return modelAndView;
	   }
	
	@RequestMapping(value = "/databyprodid", method = RequestMethod.GET)
	public ModelAndView databyprodid(HttpServletRequest request,
			HttpServletResponse response, @ModelAttribute Users userdetailsobj,
			@ModelAttribute Product productobj) {
		Product Productdata = null;
		HttpSession session = request.getSession(true);
		try {
			int id=Integer.parseInt(request.getParameter("id"));
			Productdata = cserviceIntf.getdatabyProdid(id);
			return new ModelAndView("UpdateProduct", "Productdata", Productdata);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return null;
	}
	
	/*==================================updateproduct===============================
			code for update product*/
	@RequestMapping(value = "/updatenewprod", method = RequestMethod.POST)
	public ModelAndView updatenewprod(HttpServletRequest request,
			HttpServletResponse response, @ModelAttribute Users userdetailsobj,
			@ModelAttribute Product productobj) {
		int id = 0;
		String message = "";
		HttpSession session = request.getSession(true);
		List<Product> ProductList = null;
		try {
			int pid=Integer.parseInt(request.getParameter("pid"));
			productobj.setPid(pid);
			ProductList = cserviceIntf.Productupdate(productobj);
			System.out.println("----------------"+ProductList.size());
			return new ModelAndView("Productlist", "ProductList", ProductList);
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return null;
	}

	

	@RequestMapping(value = "/databyprodiddel", method = RequestMethod.GET)
	public ModelAndView databyprodiddel(HttpServletRequest request,
			HttpServletResponse response, @ModelAttribute Users userdetailsobj,
			@ModelAttribute Product productobj) {
		List<Product> ProductList = null;
		try {
			int id=Integer.parseInt(request.getParameter("id"));
			productobj.setPid(id);
			ProductList = cserviceIntf.delproductbyid(productobj);
			return new ModelAndView("Productlist", "ProductList", ProductList);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return null;
	}
	/*=================add to the cart======================*/
	@RequestMapping(value = "/addtocart", method = RequestMethod.GET)
	public ModelAndView addtocart(HttpServletRequest request,
			HttpServletResponse response, @ModelAttribute Users userdetailsobj,
			@ModelAttribute Product productobj,@ModelAttribute buyproduct buyproductobj) {
		List<Product> ProductList = null;
		Users userdata=null;
		Product productdata=null;
		HttpSession session = request.getSession(true);
		List<buyproduct>buyproductcart=null;
		try {
			int pid=Integer.parseInt(request.getParameter("pid"));
			int uid=Integer.parseInt(request.getParameter("uid"));
		
			
			productdata=cserviceIntf.getdatabyProdid(pid);
			userdata=cserviceIntf.getdatabyuserid(uid);
					
					
			buyproductobj.setUid(uid);
			buyproductobj.setPid(pid);
			buyproductobj.setProductname(productdata.getProductname());
			buyproductobj.setImgname(productdata.getImgname());
			buyproductobj.setTotal(productdata.getTotal());
			buyproductobj.setPrice(productdata.getPrice());
			buyproductobj.setNoofbuyprod("1");
			buyproductobj.setCart("YES");
			buyproductobj.setChkout("NO");
			buyproductobj.setDatetime(new Date());
			buyproductobj.setOwner(userdata.getUfname()+userdata.getUlastname());
			buyproductobj.setNoprodchkout("0");
			buyproductobj.setCardnumber("");
			buyproductobj.setExpmonth("");
			buyproductobj.setExpyear("");
			buyproductobj.setUseremail(userdata.getUemail());
			
			ProductList = cserviceIntf.buyproductcart(buyproductobj);
			
			
			
			
			buyproductcart=cserviceIntf.listofbuyincart(uid);
			int cartnumber=buyproductcart.size();
			session.removeAttribute("cartnumber");
			session.setAttribute("cartnumber", cartnumber);
			
		List<buyproduct>totalofcart=cserviceIntf.totalofcart(uid);
			
			session.removeAttribute("totalofcart");
			session.setAttribute("totalofcart", totalofcart);
			
			return new ModelAndView("Productlist", "ProductList", ProductList);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return null;
	}
	
	
	@RequestMapping(value="Home", method = RequestMethod.GET)
	   public ModelAndView Home(HttpServletRequest request,
				HttpServletResponse response, @ModelAttribute Users userdetailsobj,
				@ModelAttribute Product productobj,@ModelAttribute buyproduct buyproductobj){
		HttpSession session = request.getSession(true);
		List<buyproduct>buyproductcart=null;
		try {
			int uid=Integer.parseInt(request.getParameter("uid"));
			buyproductcart=cserviceIntf.listofbuyincart(uid);
			int cartnumber=buyproductcart.size();
			session.removeAttribute("cartnumber");
			session.setAttribute("cartnumber", cartnumber);
			
			List<buyproduct>totalofcart=cserviceIntf.totalofcart(uid);
			
			session.removeAttribute("totalofcart");
			session.setAttribute("totalofcart", totalofcart);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	    ModelAndView modelAndView = new ModelAndView("Home");
	    return modelAndView;
	   }
	
	
	@RequestMapping(value="Showcartdata", method = RequestMethod.GET)
	   public ModelAndView Showcartdata(HttpServletRequest request,
				HttpServletResponse response, @ModelAttribute Users userdetailsobj,
				@ModelAttribute Product productobj,@ModelAttribute buyproduct buyproductobj){
		HttpSession session = request.getSession(true);
		List<buyproduct>buyproductcart=null;
		try {
			int uid=Integer.parseInt(request.getParameter("uid"));
			buyproductcart=cserviceIntf.listofbuyincart(uid);
			
			int cartnumber=buyproductcart.size();
			session.removeAttribute("cartnumber");
			session.setAttribute("cartnumber", cartnumber);
			
List<buyproduct>totalofcart=cserviceIntf.totalofcart(uid);
			
			session.removeAttribute("totalofcart");
			session.setAttribute("totalofcart", totalofcart);
			
			return new ModelAndView("cart", "buyproductcart", buyproductcart);
		} catch (Exception e) {
			// TODO: handle exception
		}
	    ModelAndView modelAndView = new ModelAndView("Home");
	    return modelAndView;
	   }
	
	//public int delcartbyid(buyproduct buyproductobj) 
	
	@RequestMapping(value="delcartbyid", method = RequestMethod.GET)
	   public ModelAndView delcartbyid(HttpServletRequest request,
				HttpServletResponse response, @ModelAttribute Users userdetailsobj,
				@ModelAttribute Product productobj,@ModelAttribute buyproduct buyproductobj){
		HttpSession session = request.getSession(true);
		List<buyproduct>buyproductcart=null;
		int bid=0;
		try {
			
			
			bid=cserviceIntf.delcartbyid(buyproductobj);
			
			int uid=Integer.parseInt(request.getParameter("uid"));
			buyproductcart=cserviceIntf.listofbuyincart(uid);
			
			int cartnumber=buyproductcart.size();
			session.removeAttribute("cartnumber");
			session.setAttribute("cartnumber", cartnumber);
			
List<buyproduct>totalofcart=cserviceIntf.totalofcart(uid);
			
			session.removeAttribute("totalofcart");
			session.setAttribute("totalofcart", totalofcart);
			return new ModelAndView("cart", "buyproductcart", buyproductcart);
		} catch (Exception e) {
			// TODO: handle exception
		}
	    ModelAndView modelAndView = new ModelAndView("Home");
	    return modelAndView;
	   }
	
	////
	@RequestMapping(value = "/buyfromcart", method = RequestMethod.GET)
	public ModelAndView buyfromcart(HttpServletRequest request,
			HttpServletResponse response, @ModelAttribute Users userdetailsobj,
			@ModelAttribute Product productobj,@ModelAttribute buyproduct buyproductobj) {
		List<Product> ProductList = null;
		Users userdata=null;
		Product productdata=null;
		buyproduct buyproductdata=null;
		HttpSession session = request.getSession(true);
		List<buyproduct>buyproductcart=null;
		try {
			int pid=Integer.parseInt(request.getParameter("pid"));
			int uid=Integer.parseInt(request.getParameter("uid"));
		    int bid=Integer.parseInt(request.getParameter("bid"));
			String count=request.getParameter("count");
			
			
			productdata=cserviceIntf.getdatabyProdid(pid);
			userdata=cserviceIntf.getdatabyuserid(uid);
					
			int i=(Integer.parseInt(count)*(Integer.parseInt(productdata.getPrice())));
				
			
			buyproductobj.setBid(bid);
			buyproductobj.setUid(uid);
			buyproductobj.setPid(pid);
			buyproductobj.setProductname(productdata.getProductname());
			buyproductobj.setImgname(productdata.getImgname());
			buyproductobj.setTotal(productdata.getTotal());
			buyproductobj.setPrice(String.valueOf(i));
			buyproductobj.setNoofbuyprod(count);
			buyproductobj.setCart("No");
			buyproductobj.setChkout("YES");
			buyproductobj.setDatetime(new Date());
			buyproductobj.setOwner(userdata.getUfname()+" "+userdata.getUlastname());
			buyproductobj.setNoprodchkout(count);
			buyproductobj.setCardnumber("");
			buyproductobj.setExpmonth("");
			buyproductobj.setExpyear("");
			buyproductobj.setUseremail(userdata.getUemail());
			
			 bid = cserviceIntf.buyproductcartBuy(buyproductobj);
			 buyproductdata=cserviceIntf.getdatabybid(bid);
			
			
			buyproductcart=cserviceIntf.listofbuyincart(uid);
			int cartnumber=buyproductcart.size();
			session.removeAttribute("cartnumber");
			session.setAttribute("cartnumber", cartnumber);
			
			
List<buyproduct>totalofcart=cserviceIntf.totalofcart(uid);
			
			session.removeAttribute("totalofcart");
			session.setAttribute("totalofcart", totalofcart);
			
			return new ModelAndView("card", "buyproductdata", buyproductdata);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return null;
	}
	
	
	
	@RequestMapping(value = "/buybyCard", method = RequestMethod.POST)
	public ModelAndView buybyCard(HttpServletRequest request,
			HttpServletResponse response, @ModelAttribute Users userdetailsobj,
			@ModelAttribute Product productobj,@ModelAttribute buyproduct buyproductobj) {
		List<Product> ProductList = null;
		Users userdata=null;
		Product productdata=null;
		buyproduct buyproductdata=null;
		HttpSession session = request.getSession(true);
		List<buyproduct>buyproductcart=null;
		try {
			
					
			int  bid=Integer.parseInt(request.getParameter("bid"));
			buyproductdata=cserviceIntf.getdatabybid(bid);
			
			buyproductobj.setBid(buyproductdata.getBid());
			buyproductobj.setUid(buyproductdata.getUid());
			buyproductobj.setPid(buyproductdata.getPid());
			buyproductobj.setProductname(buyproductdata.getProductname());
			buyproductobj.setImgname(buyproductdata.getImgname());
			buyproductobj.setTotal(buyproductdata.getTotal());
			buyproductobj.setPrice(request.getParameter("price"));
			buyproductobj.setNoofbuyprod(request.getParameter("count"));
			buyproductobj.setCart("No");
			buyproductobj.setChkout("YES");
			buyproductobj.setDatetime(new Date());
			buyproductobj.setOwner(buyproductdata.getOwner());
			buyproductobj.setNoprodchkout(request.getParameter("count"));
			buyproductobj.setCardnumber(request.getParameter("cardnumber"));
			buyproductobj.setExpmonth(request.getParameter("Expiration"));
			buyproductobj.setExpyear(request.getParameter("Expirationyear"));
			buyproductobj.setUseremail(buyproductdata.getUseremail());
			
			 bid = cserviceIntf.buyproductcartBuy(buyproductobj);
			
			 buyproductdata=cserviceIntf.getdatabybid(bid);
			
			
			buyproductcart=cserviceIntf.listofbuyincart(buyproductdata.getUid());
			int cartnumber=buyproductcart.size();
			session.removeAttribute("cartnumber");
			session.setAttribute("cartnumber", cartnumber);
			
List<buyproduct>totalofcart=cserviceIntf.totalofcart(buyproductdata.getUid());
			
			session.removeAttribute("totalofcart");
			session.setAttribute("totalofcart", totalofcart);
			
			String msg="Hi "+ buyproductdata.getOwner() +"! Your order of " +buyproductdata.getProductname()+ " has been placed by value = "+request.getParameter("price")+" will Deliverd with in 5 working days";
			return new ModelAndView("Home", "msg", msg);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return null;
	}
	
	
	/*buy?pid=${data.pid}&uid=${userdata.uid}*/
	@RequestMapping(value = "/buy", method = RequestMethod.GET)
	public ModelAndView buy(HttpServletRequest request,
			HttpServletResponse response, @ModelAttribute Users userdetailsobj,
			@ModelAttribute Product productobj,@ModelAttribute buyproduct buyproductobj) {
		List<Product> ProductList = null;
		Users userdata=null;
		Product productdata=null;
		HttpSession session = request.getSession(true);
		List<buyproduct>buyproductcart=null;
		buyproduct buyproductdata=null;
		try {
			int pid=Integer.parseInt(request.getParameter("pid"));
			int uid=Integer.parseInt(request.getParameter("uid"));
		
			
			productdata=cserviceIntf.getdatabyProdid(pid);
			userdata=cserviceIntf.getdatabyuserid(uid);
					
					
			buyproductobj.setUid(uid);
			buyproductobj.setPid(pid);
			buyproductobj.setProductname(productdata.getProductname());
			buyproductobj.setImgname(productdata.getImgname());
			buyproductobj.setTotal(productdata.getTotal());
			buyproductobj.setPrice(productdata.getPrice());
			buyproductobj.setNoofbuyprod("1");
			buyproductobj.setCart("YES");
			buyproductobj.setChkout("NO");
			buyproductobj.setDatetime(new Date());
			buyproductobj.setOwner(userdata.getUfname()+" "+userdata.getUlastname());
			buyproductobj.setNoprodchkout("0");
			buyproductobj.setCardnumber("");
			buyproductobj.setExpmonth("");
			buyproductobj.setExpyear("");
			buyproductobj.setUseremail(userdata.getUemail());
			
			//ProductList = cserviceIntf.buyproductcart(buyproductobj);
			int bid=cserviceIntf.buyproductcarts(buyproductobj);
			 buyproductdata=cserviceIntf.getdatabybid(bid);
			
			
			buyproductcart=cserviceIntf.listofbuyincart(uid);
			int cartnumber=buyproductcart.size();
			session.removeAttribute("cartnumber");
			session.setAttribute("cartnumber", cartnumber);
			
			
           List<buyproduct>totalofcart=cserviceIntf.totalofcart(buyproductdata.getUid());
			
			session.removeAttribute("totalofcart");
			session.setAttribute("totalofcart", totalofcart);
			
			return new ModelAndView("card", "buyproductdata", buyproductdata);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return null;
	}
	
	
	
	
	@RequestMapping(value = "/chkoutall", method = RequestMethod.GET)
	public ModelAndView chkoutall(HttpServletRequest request,
			HttpServletResponse response, @ModelAttribute Users userdetailsobj,
			@ModelAttribute Product productobj,@ModelAttribute buyproduct buyproductobj) {
		List<Product> ProductList = null;
		Users userdata=null;
		Product productdata=null;
		HttpSession session = request.getSession(true);
		List<buyproduct>buyproductcart=null;
		buyproduct buyproductdata=null;
		try {
		//	int pid=Integer.parseInt(request.getParameter("pid"));
			int uid=Integer.parseInt(request.getParameter("uid"));
		
		//	int pid=Integer.parseInt(request.getParameter("pid"));
		//    int bid=Integer.parseInt(request.getParameter("bid"));
			/*String count=request.getParameter("count");
		*/	
			
			buyproductcart=cserviceIntf.listofbuyincart(uid);
			
			
			for (Iterator iterator = buyproductcart.iterator(); iterator
					.hasNext();) {
				buyproduct buyproduct = (buyproduct) iterator.next();
				
				int pid=buyproduct.getPid();
				System.out.println("jiiiiiiiiiiiiiiiiii"+pid);
				int bid=buyproduct.getBid();
				String count="1";
				
				productdata=cserviceIntf.getdatabyProdid(pid);
				userdata=cserviceIntf.getdatabyuserid(uid);
						
				int i=(Integer.parseInt(count)*(Integer.parseInt(productdata.getPrice())));
					
				
				buyproductobj.setBid(bid);
				buyproductobj.setUid(uid);
				buyproductobj.setPid(pid);
				buyproductobj.setProductname(productdata.getProductname());
				buyproductobj.setImgname(productdata.getImgname());
				buyproductobj.setTotal(productdata.getTotal());
				buyproductobj.setPrice(String.valueOf(i));
				buyproductobj.setNoofbuyprod(count);
				buyproductobj.setCart("No");
				buyproductobj.setChkout("YES");
				buyproductobj.setDatetime(new Date());
				buyproductobj.setOwner(userdata.getUfname()+" "+userdata.getUlastname());
				buyproductobj.setNoprodchkout(count);
				buyproductobj.setCardnumber("");
				buyproductobj.setExpmonth("");
				buyproductobj.setExpyear("");
				buyproductobj.setUseremail(userdata.getUemail());
				
				 bid = cserviceIntf.buyproductcartBuy(buyproductobj);
				 buyproductdata=cserviceIntf.getdatabybid(bid);
				
				   
			}
			
			
			buyproductcart=cserviceIntf.listofbuyincart(uid);
			int cartnumber=buyproductcart.size();
			session.removeAttribute("cartnumber");
			session.setAttribute("cartnumber", cartnumber);
			
			
             List<buyproduct>totalofcart=cserviceIntf.totalofcart(uid);
			session.removeAttribute("totalofcart");
			session.setAttribute("totalofcart", totalofcart);
			
			
			
			
			/*---------------------------------*/
			
			return new ModelAndView("cards");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return null;
	}
	
	
	////buybyCards
	@RequestMapping(value = "/buybyCards", method = RequestMethod.POST)
	public ModelAndView buybyCards(HttpServletRequest request,
			HttpServletResponse response, @ModelAttribute Users userdetailsobj,
			@ModelAttribute Product productobj,@ModelAttribute buyproduct buyproductobj) {
		List<Product> ProductList = null;
		Users userdata=null;
		Product productdata=null;
		buyproduct buyproductdata=null;
		HttpSession session = request.getSession(true);
		List<buyproduct>buyproductcart=null;
		try {
			int bid=0;
			int uid=Integer.parseInt(request.getParameter("uid"));
			buyproductcart=cserviceIntf.listofbuyincart(uid);
			String cardnum=request.getParameter("cardnumber");System.out.println(cardnum);
			String Expiration=request.getParameter("Expiration");System.out.println(Expiration);
			String Expirationyear=request.getParameter("Expirationyear");System.out.println(Expirationyear);
			
			buyproductobj.setCardnumber(cardnum);
			buyproductobj.setExpmonth(Expiration);
			buyproductobj.setExpyear(Expirationyear);
			buyproductobj.setPrice(request.getParameter("price"));
			
			
			for (Iterator iterator = buyproductcart.iterator(); iterator
					.hasNext();) {
				buyproduct buyproduct = (buyproduct) iterator.next();
			
				 bid=buyproduct.getBid();
				
				 buyproductdata=cserviceIntf.getdatabybid(bid);
					
					buyproductobj.setBid(bid);
					buyproductobj.setUid(buyproductdata.getUid());
					buyproductobj.setPid(buyproductdata.getPid());
					buyproductobj.setProductname(buyproductdata.getProductname());
					buyproductobj.setImgname(buyproductdata.getImgname());
					buyproductobj.setTotal(buyproductdata.getTotal());
					
					buyproductobj.setNoofbuyprod("1");
					buyproductobj.setCart("No");
					buyproductobj.setChkout("YES");
					buyproductobj.setDatetime(new Date());
					buyproductobj.setOwner(buyproductdata.getOwner());
					buyproductobj.setNoprodchkout("1");

					buyproductobj.setUseremail(buyproductdata.getUseremail());
					
					 int i = cserviceIntf.buyproductcartBuy(buyproductobj);
					 System.out.println("k----------"+i);
			}
			
					
			
			buyproductcart=cserviceIntf.listofbuyincart(uid);
			int cartnumber=buyproductcart.size();
			session.removeAttribute("cartnumber");
			session.setAttribute("cartnumber", cartnumber);
			
            List<buyproduct>totalofcart=cserviceIntf.totalofcart(uid);
			session.removeAttribute("totalofcart");
			session.setAttribute("totalofcart", totalofcart);
			
		
			return new ModelAndView("Home", "msg", "your order has been placed");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return null;
	}
	
}
