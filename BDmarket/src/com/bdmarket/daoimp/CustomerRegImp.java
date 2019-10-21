package com.bdmarket.daoimp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.bdmarket.dao.CustomerRegDao;
import com.bdmarket.model.Customer;
import com.bdmarket.model.ShopKeeper;
import com.bdmarket.util.DBconnection;

public class CustomerRegImp implements CustomerRegDao {

	@Override
	public void add_Customer(Customer customer) {
		// TODO Auto-generated method stub
		Connection con = DBconnection.getConnecttion();
		String sql = "insert into customer " + "(c_email, c_phone,c_password,c_gender,c_date,c_name,cus_role) "
				+ "values (?, ?, ?, ?, ?, ?,?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);

			ps.setString(1, customer.getCus_email());
			ps.setString(2, customer.getCus_phone());
			ps.setString(3, customer.getCus_password());
			ps.setString(4, customer.getCus_gender());
			ps.setString(5, customer.getCus_date());
			ps.setString(6, customer.getCus_name());
			ps.setInt(7, customer.getCus_role());
			ps.executeUpdate();
			ps.close();
		} catch (Exception ex) {
			ex.printStackTrace();

		}

	}

	@Override
	public void update_Customer(Customer customer) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete_Customer(int id) {
		Connection con = DBconnection.getConnecttion();
		String sql = "delete from customer where c_id='" + id + "'";
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Customer> getList() {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from customer";
		List<Customer> list = new ArrayList<Customer>();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("c_id");
				String email = rs.getString("c_email");
				String phoneno = rs.getString("c_phone");
				String password = rs.getString("c_password");
				String gender = rs.getString("c_gender");
				String date = rs.getString("c_date");
				String name = rs.getString("c_name");
				int role = rs.getInt("cus_role");
				list.add(new Customer(id, email, phoneno, password, gender, date, name, role));
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	
	

	@Override
	public boolean check_emailcus(String eheck_email) {

		Connection con = DBconnection.getConnecttion();
		String sql = "select * from customer where c_email='" + eheck_email + "'";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				con.close();
				return true;
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}

		return false;

	}

	@Override
	public boolean check_contactnocus(String check_contactno) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from customer where c_phone='" + check_contactno + "'";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				con.close();
				return true;
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean login_customer(String username, String password, int role) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from customer where c_email='" + username + "' and c_password='" + password
				+ "' and cus_role='" + role + "'";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				con.close();
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean login_admin(String username, String password, int role) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from customer where c_email='" + username + "' and c_password='" + password
				+ "' and cus_role='" + role + "'";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				con.close();
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

}
