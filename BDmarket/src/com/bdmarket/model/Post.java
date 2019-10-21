package com.bdmarket.model;

public class Post {
	private int id;
	private String email;
	private String productname;
	private String description;
	private double price;
	private int quantity;
	private String image;
	private String date;
	private String typeofshop;
	private String location;

	public Post() {
	}

	public Post(int quantity, String email) {
		this.quantity = quantity;
		this.email = email;
	}

	public Post(int id, String productname, String description, double price, int quantity) {
		super();
		this.id = id;
		this.productname = productname;
		this.description = description;
		this.price = price;
		this.quantity = quantity;
	}

	public Post(int id, String email, String productname, String description, double price, int quantity, String image,
			String date, String typeofshop, String location) {
		super();
		this.id = id;
		this.email = email;
		this.productname = productname;
		this.description = description;
		this.price = price;
		this.quantity = quantity;
		this.image = image;
		this.date = date;
		this.typeofshop = typeofshop;
		this.location = location;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTypeofshop() {
		return typeofshop;
	}

	public void setTypeofshop(String typeofshop) {
		this.typeofshop = typeofshop;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

}
