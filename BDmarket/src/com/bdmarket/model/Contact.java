package com.bdmarket.model;

public class Contact {

	private int con_id;
	private String con_name;
	private String con_email;
	private String con_subject;
	private String con_message;
	private String con_date;

	public Contact() {

	}

	public Contact(String con_name, String con_email, String con_subject, String con_message, String con_date) {
		super();
		this.con_name = con_name;
		this.con_email = con_email;
		this.con_subject = con_subject;
		this.con_message = con_message;
		this.con_date = con_date;
	}

	public Contact(int con_id, String con_name, String con_email, String con_subject, String con_message,
			String con_date) {
		super();
		this.con_id = con_id;
		this.con_name = con_name;
		this.con_email = con_email;
		this.con_subject = con_subject;
		this.con_message = con_message;
		this.con_date = con_date;
	}

	public int getCon_id() {
		return con_id;
	}

	public void setCon_id(int con_id) {
		this.con_id = con_id;
	}

	public String getCon_name() {
		return con_name;
	}

	public void setCon_name(String con_name) {
		this.con_name = con_name;
	}

	public String getCon_email() {
		return con_email;
	}

	public void setCon_email(String con_email) {
		this.con_email = con_email;
	}

	public String getCon_subject() {
		return con_subject;
	}

	public void setCon_subject(String con_subject) {
		this.con_subject = con_subject;
	}

	public String getCon_message() {
		return con_message;
	}

	public void setCon_message(String con_message) {
		this.con_message = con_message;
	}

	public String getCon_date() {
		return con_date;
	}

	public void setCon_date(String con_date) {
		this.con_date = con_date;
	}

}
