package com.bdmarket.model;

public class MessageShopkeeper {

	private int id;
	private String shoopkeeperemail;
	private String customeremail;
	private String comment;
	private int role;
	private String date;

	public MessageShopkeeper() {
	}

	public MessageShopkeeper(int id, String shoopkeeperemail, String customeremail, String comment, int role,
			String date) {
		super();
		this.id = id;
		this.shoopkeeperemail = shoopkeeperemail;
		this.customeremail = customeremail;
		this.comment = comment;
		this.role = role;
		this.date = date;
	}

	public MessageShopkeeper(int role, int id) {
		this.role = role;
		this.id = id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getShoopkeeperemail() {
		return shoopkeeperemail;
	}

	public void setShoopkeeperemail(String shoopkeeperemail) {
		this.shoopkeeperemail = shoopkeeperemail;
	}

	public String getCustomeremail() {
		return customeremail;
	}

	public void setCustomeremail(String customeremail) {
		this.customeremail = customeremail;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
}
