/**
 * 
 */
package com.Cosmeticonline.pojo;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * @author sanaa hajji
 *
 */
@Entity
public class buyproduct implements Serializable {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int bid;
	private int uid;
	private int pid;
	private String productname;
	private String imgname;
	private String total;
	private String price;
	private String noofbuyprod;
	private String cart;
	private String chkout;
	private Date datetime;
	private String owner;
	private String noprodchkout;
	private String cardnumber;
	private String expmonth;
	private String expyear;
	private String useremail;
	
	public buyproduct(){
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getImgname() {
		return imgname;
	}
	public void setImgname(String imgname) {
		this.imgname = imgname;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getNoofbuyprod() {
		return noofbuyprod;
	}
	public void setNoofbuyprod(String noofbuyprod) {
		this.noofbuyprod = noofbuyprod;
	}
	public String getCart() {
		return cart;
	}
	public void setCart(String cart) {
		this.cart = cart;
	}
	public String getChkout() {
		return chkout;
	}
	public void setChkout(String chkout) {
		this.chkout = chkout;
	}
	public Date getDatetime() {
		return datetime;
	}
	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	public String getNoprodchkout() {
		return noprodchkout;
	}
	public void setNoprodchkout(String noprodchkout) {
		this.noprodchkout = noprodchkout;
	}
	public String getCardnumber() {
		return cardnumber;
	}
	public void setCardnumber(String cardnumber) {
		this.cardnumber = cardnumber;
	}
	public String getExpmonth() {
		return expmonth;
	}
	public void setExpmonth(String expmonth) {
		this.expmonth = expmonth;
	}
	public String getExpyear() {
		return expyear;
	}
	public void setExpyear(String expyear) {
		this.expyear = expyear;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	
	
	
}
