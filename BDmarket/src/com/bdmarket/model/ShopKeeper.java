package com.bdmarket.model;

public class ShopKeeper {

	private int shop_id;
	private String shop_name;
	private String shop_email;
	private String shop_phone;
	private String shop_password;
	private String shop_gender;
	private String shop_date;
	private int shop_role;

	public ShopKeeper() {
	}

	public ShopKeeper(int shop_id, String shop_name, String shop_email, String shop_phone, String shop_password,
			String shop_gender, String shop_date, int shop_role) {
		super();
		this.shop_id = shop_id;
		this.shop_name = shop_name;
		this.shop_email = shop_email;
		this.shop_phone = shop_phone;
		this.shop_password = shop_password;
		this.shop_gender = shop_gender;
		this.shop_date = shop_date;
		this.shop_role = shop_role;
	}

	public ShopKeeper(String shop_password, String shop_email) {
		super();
		this.shop_password = shop_password;
		this.shop_email = shop_email;
	}

	public ShopKeeper(String shop_phone, String shop_password, String shop_date, String shop_email) {
		this.shop_phone = shop_phone;
		this.shop_password = shop_password;
		this.shop_date = shop_date;
		this.shop_email = shop_email;
	}

	public ShopKeeper(String shop_name) {
		this.shop_name = shop_name;
	}

	public int getShop_id() {
		return shop_id;
	}

	public void setShop_id(int shop_id) {
		this.shop_id = shop_id;
	}

	public String getShop_name() {
		return shop_name;
	}

	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}

	public String getShop_email() {
		return shop_email;
	}

	public void setShop_email(String shop_email) {
		this.shop_email = shop_email;
	}

	public String getShop_phone() {
		return shop_phone;
	}

	public void setShop_phone(String shop_phone) {
		this.shop_phone = shop_phone;
	}

	public String getShop_password() {
		return shop_password;
	}

	public void setShop_password(String shop_password) {
		this.shop_password = shop_password;
	}

	public String getShop_gender() {
		return shop_gender;
	}

	public void setShop_gender(String shop_gender) {
		this.shop_gender = shop_gender;
	}

	public String getShop_date() {
		return shop_date;
	}

	public void setShop_date(String shop_date) {
		this.shop_date = shop_date;
	}

	public int getShop_role() {
		return shop_role;
	}

	public void setShop_role(int shop_role) {
		this.shop_role = shop_role;
	}

}
