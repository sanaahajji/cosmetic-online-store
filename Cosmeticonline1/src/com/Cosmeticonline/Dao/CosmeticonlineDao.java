/**
 * 
 */
package com.Cosmeticonline.Dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.Cosmeticonline.DaoInterface.CosmeticonlineDaoInterface;
import com.Cosmeticonline.pojo.Product;
import com.Cosmeticonline.pojo.Users;
import com.Cosmeticonline.pojo.buyproduct;

/**
 * @author sanaa hajji
 *
 */
@Repository
public class CosmeticonlineDao implements CosmeticonlineDaoInterface {

	@Autowired
	private SessionFactory sessionFactory;

	public CosmeticonlineDao() {
	}

	public CosmeticonlineDao(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	@Transactional
	public int UserInteration(Users usersobj) {
		int id = 0;
		try {
			sessionFactory.getCurrentSession().save(usersobj);
			id = usersobj.getUid();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return id;
	}

	@Override
	@Transactional
	public List<Users> loginuser(Users UsersrObj) {
		List<Users> Listofuseer = null;
		try {
			Session session = this.sessionFactory.getCurrentSession();
			Criteria criteria = session.createCriteria(Users.class);
			criteria.add(Restrictions.eq("uemail", UsersrObj.getUemail()));
			criteria.add(Restrictions.eq("upassword", UsersrObj.getUpassword()));
			Listofuseer = criteria.list();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
		}
		return Listofuseer;

	}

	@Override
	@Transactional
	public int ProductInsert(Product prodobj) {
		int id = 0;
		try {
			sessionFactory.getCurrentSession().save(prodobj);
			id = prodobj.getPid();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return id;
	}

	@Override
	@Transactional
	public List<Product> listofProduct() {
		List<Product> ListofProduct = null;
		try {
			Session session = this.sessionFactory.getCurrentSession();
			Criteria criteria = session.createCriteria(Product.class);
			ListofProduct = criteria.list();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
		}
		return ListofProduct;

	}
	
	
	@Override
	@Transactional
	public Product getdatabyProdid(int pid) {
		Product Productdata = null;
		try {
			Session session = this.sessionFactory.getCurrentSession();
			Productdata =  (Product) session.get(Product.class, new Integer(pid));
				return Productdata;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return Productdata;
	}
	
	@Override
	@Transactional
	public Users getdatabyuserid(int uid) {
		Users userdata = null;
		try {
			Session session = this.sessionFactory.getCurrentSession();
			userdata =  (Users) session.get(Users.class, new Integer(uid));
				return userdata;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return userdata;
	}
	
	@Override
	@Transactional
	public int Productupdate(Product prodobj) {
		int id = 0;
		try {
			sessionFactory.getCurrentSession().update(prodobj);
			id = prodobj.getPid();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return id;
	}

	@Override
	@Transactional
	public int delproductbyid(Product prodobj) {
		int id = 0;
		try {
			sessionFactory.getCurrentSession().delete(prodobj);
			id = prodobj.getPid();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return id;
	}
	
	@Override
	@Transactional
	public int buyproductcart(buyproduct buyproductobj) {
		int bid = 0;
		try {
			sessionFactory.getCurrentSession().save(buyproductobj);
			bid = buyproductobj.getBid();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return bid;
	}
	@Override
	@Transactional
	public List<buyproduct> listofbuyincart(int uid) {
		List<buyproduct> listbuyproductcart = null;
		try {
			Session session = this.sessionFactory.getCurrentSession();
			Criteria criteria = session.createCriteria(buyproduct.class);
			criteria.add(Restrictions.eq("cart", "YES"));
			criteria.add(Restrictions.eq("chkout", "NO"));
			criteria.add(Restrictions.eq("uid", uid));
			listbuyproductcart = criteria.list();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
		}
		return listbuyproductcart;
	}
	
	@Override
	@Transactional
	public int delcartbyid(buyproduct buyproductobj) {
		int id = 0;
		try {
			sessionFactory.getCurrentSession().delete(buyproductobj);
			id = buyproductobj.getBid();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return id;
	}
	
	
	@Override
	@Transactional
	public int buyproductcartBuy(buyproduct buyproductobj) {
		int bid = 0;
		try {
			sessionFactory.getCurrentSession().update(buyproductobj);
			bid = buyproductobj.getBid();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return bid;
	}
	@Override
	@Transactional
	public buyproduct getdatabybid(int bid) {
		buyproduct buyproductdata = null;
		try {
			Session session = this.sessionFactory.getCurrentSession();
			buyproductdata =  (buyproduct) session.get(buyproduct.class, new Integer(bid));
				return buyproductdata;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return buyproductdata;
	}
	@Override
	@Transactional
	public List<buyproduct> listofbuychkout() {
		List<buyproduct> listbuyproductcart = null;
		try {
			Session session = this.sessionFactory.getCurrentSession();
			Criteria criteria = session.createCriteria(buyproduct.class);
			criteria.add(Restrictions.eq("cart", "No"));
			criteria.add(Restrictions.eq("chkout", "YES"));
			listbuyproductcart = criteria.list();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
		}
		return listbuyproductcart;
	}
	
	
	@Override
	@Transactional
	public List<buyproduct>totalofcart(int uid) {
		List<buyproduct> buyproductdata = null;
		int total=0;
		String h_ql = "";
		try {
			
			Session session = this.sessionFactory.getCurrentSession();
			h_ql = "SELECT SUM(price)AS sumtotal FROM buyproduct WHERE chkout='No' AND uid='"+ uid + "' GROUP BY uid";
			Query query = session.createQuery(h_ql);
			buyproductdata = query.list();	
			System.out.println("******************************************************************");
			
		} catch (Exception e) {
			// TODO: handle exception
e.printStackTrace();System.out.println(e);
		}

		return buyproductdata;

	}
	
	
	
}
