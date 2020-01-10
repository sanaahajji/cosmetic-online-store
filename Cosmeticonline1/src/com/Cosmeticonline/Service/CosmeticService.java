/**
 * 
 */
package com.Cosmeticonline.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Cosmeticonline.DaoInterface.CosmeticonlineDaoInterface;
import com.Cosmeticonline.ServiceInterface.CosmeticServiceInterface;
import com.Cosmeticonline.pojo.Product;
import com.Cosmeticonline.pojo.Users;
import com.Cosmeticonline.pojo.buyproduct;

/**
 * @author sanaa hajji
 *
 */
@Service("CosmeticServiceInterface")
public class CosmeticService implements CosmeticServiceInterface {

	@Autowired
	CosmeticonlineDaoInterface cdaoIntf;

	public int UserInteration(Users usersobj) {
		int uid = 0;
		try {
			uid = cdaoIntf.UserInteration(usersobj);

		} catch (Exception e) {
			// TODO: handle exception
		}
		return uid;
	}

	public List<Users> loginuser(Users UsersrObj) {
		List<Users> Listofuseer = null;
		try {
			Listofuseer = cdaoIntf.loginuser(UsersrObj);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return Listofuseer;
	}

	// public int ProductInsert(Product prodobj)
	public List<Product> ProductInsert(Product ProductObj) {
		List<Product> ProductList = null;
		int id = 0;
		try {
			id = cdaoIntf.ProductInsert(ProductObj);

			ProductList = cdaoIntf.listofProduct();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return ProductList;
	}

	public List<Product> productlist() {
		List<Product> ProductList = null;
		int id = 0;
		try {
			ProductList = cdaoIntf.listofProduct();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return ProductList;
	}

	public Product getdatabyProdid(int pid) {
		Product Productdata = null;
		try {
			Productdata = cdaoIntf.getdatabyProdid(pid);

		} catch (Exception e) {
			// TODO: handle exception
		}
		return Productdata;
	}

	// public int ProductInsert(Product prodobj)
	public List<Product> Productupdate(Product ProductObj) {
		List<Product> ProductList = null;
		int id = 0;
		try {
			id = cdaoIntf.Productupdate(ProductObj);

			ProductList = cdaoIntf.listofProduct();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return ProductList;
	}

	public List<Product> delproductbyid(Product ProductObj) {
		List<Product> ProductList = null;
		int id = 0;
		try {
			id = cdaoIntf.delproductbyid(ProductObj);

			ProductList = cdaoIntf.listofProduct();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return ProductList;
	}

	public List<Product> buyproductcart(buyproduct buyproductob) {
		List<Product> ProductList = null;
		int bid = 0;
		try {
			bid = cdaoIntf.buyproductcart(buyproductob);
			ProductList = cdaoIntf.listofProduct();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return ProductList;
	}

	public Users getdatabyuserid(int uid) {
		Users userdata = null;
		try {
			userdata = cdaoIntf.getdatabyuserid(uid);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return userdata;

	}

	public List<buyproduct> listofbuyincart(int uid)
	{
		List<buyproduct> productdataincart = null;
		int bid = 0;
		try {
			productdataincart = cdaoIntf.listofbuyincart(uid);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return productdataincart;
	}

	public int delcartbyid(buyproduct buyproductobj) 
	{int bid=0;
		try {
			 bid=cdaoIntf.delcartbyid(buyproductobj);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return bid;
	}
	
	public int buyproductcartBuy(buyproduct buyproductobj) 
	{int bid=0;
		try {
			 bid=cdaoIntf.buyproductcartBuy(buyproductobj);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return bid;
	}
	
	
	public buyproduct getdatabybid(int bid)
	{
		buyproduct buyproductdata=null;
		try {
			buyproductdata=cdaoIntf.getdatabybid(bid);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return buyproductdata;
	}
	
	public int buyproductcarts(buyproduct buyproductob) {
		int bid = 0;
		try {
			bid = cdaoIntf.buyproductcart(buyproductob);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return bid;
	}
	
	public List<buyproduct> listofbuychkout()
	{
		List<buyproduct> productdataincart = null;
		int bid = 0;
		try {
			productdataincart = cdaoIntf.listofbuychkout();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return productdataincart;
	}
	
	public List<buyproduct>totalofcart(int uid)
	{
		List<buyproduct> totalofcart = null;
		int bid = 0;
		try {
			totalofcart = cdaoIntf.totalofcart(uid);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return totalofcart;
	}
}
