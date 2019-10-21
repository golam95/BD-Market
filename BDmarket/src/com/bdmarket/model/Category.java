package com.bdmarket.model;

public class Category {

	private int id;
	private String shopcategory;

	public Category() {
	}

	public Category(int id, String shopcategory) {
		super();
		this.id = id;
		this.shopcategory = shopcategory;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getShopcategory() {
		return shopcategory;
	}

	public void setShopcategory(String shopcategory) {
		this.shopcategory = shopcategory;
	}

}
