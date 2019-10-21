package com.bdmarket.daoimp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.bdmarket.dao.ContactDao;
import com.bdmarket.model.Contact;
import com.bdmarket.util.DBconnection;

public class ContactImp implements ContactDao {

	@Override
	public void add_contact(Contact contact) {

		Connection con = DBconnection.getConnecttion();
		String sql = "insert into contact " + "(name, email,subject,message,date) " + "values (?, ?, ?, ?, ?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			ps.setString(1, contact.getCon_name());
			ps.setString(2, contact.getCon_email());
			ps.setString(3, contact.getCon_subject());
			ps.setString(4, contact.getCon_message());
			ps.setString(5, contact.getCon_date());
			ps.executeUpdate();
			ps.close();
		} catch (Exception ex) {
			ex.printStackTrace();

		}

	}

	@Override
	public void delete_contact(int contact_id) {
		Connection con = DBconnection.getConnecttion();
		String sql = "delete from contact where id='" + contact_id + "'";
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public List<Contact> getcontactList() {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from contact";
		List<Contact> list = new ArrayList<Contact>();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				String name = rs.getString("name");
				String email = rs.getString("email");
				String subject = rs.getString("subject");
				String message = rs.getString("message");
				String date = rs.getString("date");
				list.add(new Contact(name, email, subject, message, date));
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

}
