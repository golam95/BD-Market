package com.bdmarket.model;

public class Cart {
	private int cartId;
	private String productName;
	private int quantity;
	private String description;
	private double price;
	private String date;
	private String owneremail;
	private String imlink;
	private String customerEmail;
	private int productId;

	public Cart() {
	}

	public Cart(int cartId, String productName, int quantity, String description, double price, String date,
			String owneremail, String imlink, String customerEmail, int productId) {
		super();
		this.cartId = cartId;
		this.productName = productName;
		this.quantity = quantity;
		this.description = description;
		this.price = price;
		this.date = date;
		this.owneremail = owneremail;
		this.imlink = imlink;
		this.customerEmail = customerEmail;
		this.productId = productId;
	}

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
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

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getOwneremail() {
		return owneremail;
	}

	public void setOwneremail(String owneremail) {
		this.owneremail = owneremail;
	}

	public String getImlink() {
		return imlink;
	}

	public void setImlink(String imlink) {
		this.imlink = imlink;
	}

	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

}
