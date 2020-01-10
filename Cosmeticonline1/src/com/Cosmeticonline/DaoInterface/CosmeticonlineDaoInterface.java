/**
 * 
 */
package com.Cosmeticonline.DaoInterface;

import java.util.List;

import com.Cosmeticonline.pojo.Product;
import com.Cosmeticonline.pojo.Users;
import com.Cosmeticonline.pojo.buyproduct;

/**
 * @author sanaa hajji
 *
 */
public interface CosmeticonlineDaoInterface {

	public int UserInteration(Users usersobj);
	public List<Users> loginuser(Users UsersrObj);
	public int ProductInsert(Product prodobj);
	public List<Product> listofProduct();
	public Product getdatabyProdid(int pid);
	public Users getdatabyuserid(int uid);
	public int Productupdate(Product prodobj);
	public int delproductbyid(Product prodobj);
	public int buyproductcart(buyproduct buyproductobj);
	public List<buyproduct> listofbuyincart(int uid) ;
	public int delcartbyid(buyproduct buyproductobj) ;
	public int buyproductcartBuy(buyproduct buyproductobj);
	public buyproduct getdatabybid(int bid) ;
	public List<buyproduct> listofbuychkout();
	public List<buyproduct>totalofcart(int uid);

}
