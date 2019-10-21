package com.bdmarket.model;

public class UpdateProfile {
	private int up_id;
	private String up_shopName;
	private String up_shoploction;
	private String up_shoptype;
	private String up_productname;
	private String email;
	private String up_date;

	public UpdateProfile() {

	}

	public UpdateProfile(int up_id, String up_shopName, String up_shoploction, String up_shoptype,
			String up_productname, String email, String up_date) {
		super();
		this.up_id = up_id;
		this.up_shopName = up_shopName;
		this.up_shoploction = up_shoploction;
		this.up_shoptype = up_shoptype;
		this.up_productname = up_productname;
		this.email = email;
		this.up_date = up_date;
	}

	public int getUp_id() {
		return up_id;
	}

	public void setUp_id(int up_id) {
		this.up_id = up_id;
	}

	public String getUp_shopName() {
		return up_shopName;
	}

	public void setUp_shopName(String up_shopName) {
		this.up_shopName = up_shopName;
	}

	public String getUp_shoploction() {
		return up_shoploction;
	}

	public void setUp_shoploction(String up_shoploction) {
		this.up_shoploction = up_shoploction;
	}

	public String getUp_shoptype() {
		return up_shoptype;
	}

	public void setUp_shoptype(String up_shoptype) {
		this.up_shoptype = up_shoptype;
	}

	public String getUp_productname() {
		return up_productname;
	}

	public void setUp_productname(String up_productname) {
		this.up_productname = up_productname;
	}

	public String getUp_date() {
		return up_date;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setUp_date(String up_date) {
		this.up_date = up_date;
	}

}
