package com.bdmarket.model;

public class Customer {

	private int cus_id;
	private String cus_name;
	private String cus_email;
	private String cus_phone;
	private String cus_password;
	private String cus_gender;
	private String cus_date;
	private int cus_role;

	public Customer() {

	}

	public Customer(String cus_phone, String cus_password, String cus_name,String cus_email) {
		super();
		this.cus_phone = cus_phone;
		this.cus_password = cus_password;
		this.cus_name = cus_name;
		this.cus_email=cus_email;
	}

	public Customer(int cus_id, String cus_email, String cus_phone, String cus_password, String cus_gender,
			String cus_date, String cus_name, int cus_role) {
		super();
		this.cus_id = cus_id;
		this.cus_email = cus_email;
		this.cus_phone = cus_phone;
		this.cus_password = cus_password;
		this.cus_gender = cus_gender;
		this.cus_date = cus_date;
		this.cus_name = cus_name;
		this.cus_role = cus_role;
	}
	public Customer(String cus_password,String cus_email) {
		this.cus_password=cus_password;
		this.cus_email=cus_email;
	}
	
	public Customer(String cus_name) {
		this.cus_name=cus_name;
	}

	public int getCus_id() {
		return cus_id;
	}

	public void setCus_id(int cus_id) {
		this.cus_id = cus_id;
	}

	public String getCus_name() {
		return cus_name;
	}

	public void setCus_name(String cus_name) {
		this.cus_name = cus_name;
	}

	public String getCus_email() {
		return cus_email;
	}

	public void setCus_email(String cus_email) {
		this.cus_email = cus_email;
	}

	public String getCus_phone() {
		return cus_phone;
	}

	public void setCus_phone(String cus_phone) {
		this.cus_phone = cus_phone;
	}

	public String getCus_password() {
		return cus_password;
	}

	public void setCus_password(String cus_password) {
		this.cus_password = cus_password;
	}

	public String getCus_gender() {
		return cus_gender;
	}

	public void setCus_gender(String cus_gender) {
		this.cus_gender = cus_gender;
	}

	public String getCus_date() {
		return cus_date;
	}

	public void setCus_date(String cus_date) {
		this.cus_date = cus_date;
	}

	public int getCus_role() {
		return cus_role;
	}

	public void setCus_role(int cus_role) {
		this.cus_role = cus_role;
	}

}
