package com.bdmarket.model;

public class CustomerOrder {
	private int orderId;
	private String productName;
	private int quantity;
	private String productDescription;
	private double productPrice;
	private String orderDate;
	private String OwnerEmail;
	private String CustomerEmail;
	private String imagelink;
	private int role;
	private String customerAddress;
	private String customerContactNo;

	public CustomerOrder() {
	}

	public CustomerOrder(int orderId, String productName, int quantity, String productDescription, double productPrice,
			String orderDate, String ownerEmail, String customerEmail, String imagelink, int role,
			String customerAddress, String customerContactNo) {
		super();
		this.orderId = orderId;
		this.productName = productName;
		this.quantity = quantity;
		this.productDescription = productDescription;
		this.productPrice = productPrice;
		this.orderDate = orderDate;
		OwnerEmail = ownerEmail;
		CustomerEmail = customerEmail;
		this.imagelink = imagelink;
		this.role = role;
		this.customerAddress = customerAddress;
		this.customerContactNo = customerContactNo;
	}

	public CustomerOrder(int role, int orderId) {
		this.role = role;
		this.orderId = orderId;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
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

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public double getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public String getOwnerEmail() {
		return OwnerEmail;
	}

	public void setOwnerEmail(String ownerEmail) {
		OwnerEmail = ownerEmail;
	}

	public String getCustomerEmail() {
		return CustomerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		CustomerEmail = customerEmail;
	}

	public String getImagelink() {
		return imagelink;
	}

	public void setImagelink(String imagelink) {
		this.imagelink = imagelink;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

	public String getCustomerAddress() {
		return customerAddress;
	}

	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}

	public String getCustomerContactNo() {
		return customerContactNo;
	}

	public void setCustomerContactNo(String customerContactNo) {
		this.customerContactNo = customerContactNo;
	}
}
