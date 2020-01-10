/**
 * 
 */
package com.Cosmeticonline.ServiceInterface;

import java.util.List;

import com.Cosmeticonline.pojo.Product;
import com.Cosmeticonline.pojo.Users;
import com.Cosmeticonline.pojo.buyproduct;

/**
 * @author
 *
 */
public interface CosmeticServiceInterface {

	public int UserInteration(Users usersobj);
	public List<Users> loginuser(Users UsersrObj);
	public List<Product> ProductInsert(Product ProductObj);
	public List<Product> productlist();
	public Product getdatabyProdid(int pid);
	public Users getdatabyuserid(int uid);
	public List<Product> Productupdate(Product ProductObj);
	public List<Product> delproductbyid(Product ProductObj);
	public List<Product> buyproductcart(buyproduct buyproductob);
	public List<buyproduct> listofbuyincart(int uid);
	public int delcartbyid(buyproduct buyproductobj) ;
	public int buyproductcartBuy(buyproduct buyproductobj) ;
	public buyproduct getdatabybid(int bid);
	public int buyproductcarts(buyproduct buyproductob) ;
	public List<buyproduct> listofbuychkout();
	public List<buyproduct>totalofcart(int uid);
}
