package com.bdmarket.daoimp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.bdmarket.dao.UpdateProfileshopDao;
import com.bdmarket.model.UpdateProfile;
import com.bdmarket.util.DBconnection;

public class updateProfileshopImp implements UpdateProfileshopDao {

	@Override
	public void add_Profile(UpdateProfile updateprofile) {

		Connection con = DBconnection.getConnecttion();
		String sql = "insert into updateprofile " + "(shopname,shoplocation, typeshop ,productname,email,date) "
				+ "values (?, ?, ?, ?, ?, ?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			ps.setString(1, updateprofile.getUp_shopName());
			ps.setString(2, updateprofile.getUp_shoploction());
			ps.setString(3, updateprofile.getUp_shoptype());
			ps.setString(4, updateprofile.getUp_productname());
			ps.setString(5, updateprofile.getEmail());
			ps.setString(6, updateprofile.getUp_date());
			ps.executeUpdate();
			ps.close();

		} catch (Exception ex) {
			ex.printStackTrace();
		}

	}

	@Override
	public void update_profileshop(UpdateProfile customer) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete_profileshop(String email) {
		Connection con = DBconnection.getConnecttion();
		String sql = "delete from updateprofile where email='" + email + "'";
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public boolean check_email(String eheck_email) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from updateprofile where email='" + eheck_email + "'";
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
	public String getshopkeeperLocation(String email) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from updateprofile where email='" + email + "'";
		String getLocation = "";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				getLocation = rs.getString("shoplocation");
				con.close();
				return getLocation;
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return getLocation;
	}

}
