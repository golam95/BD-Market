package com.bdmarket.model;

public class Message {

	private int id;
	private String email;
	private String description;
	private String data;
	private int role;

	public Message() {
	}

	public Message(int id, String email, String description, String data,int role) {
		super();
		this.id = id;
		this.email = email;
		this.description = description;
		this.data = data;
		this.role=role;
	}
	
	public Message(int role,int id) {
		this.role=role;
		this.id=id;
		
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}
	
}
