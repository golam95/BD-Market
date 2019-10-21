package com.bdmarket.daoimp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.bdmarket.dao.StatisticsDao;
import com.bdmarket.util.DBconnection;

public class StatisticsDaoImpl implements StatisticsDao {

	@Override
	public int checkNotification(String email) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from  customer_order where onweremail='" + email + "'";
		PreparedStatement ps;
		int counter = 0;
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				int role = rs.getInt("role");
				if (role == 1) {
					counter++;
				}
				con.close();
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return counter;
	}

	@Override
	public int checkMessage(String email) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from messageshopkeeper where shopkeeperemail='" + email + "'";
		PreparedStatement ps;
		int counter = 0;
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				int role = rs.getInt("role");
				if (role == 1) {
					counter++;
				}
				con.close();
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return counter;
	}

	@Override
	public int checkStock(String email) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from post where email='" + email + "'";
		PreparedStatement ps;
		int counter = 0;
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				int quantity = rs.getInt("quantity");
				if (quantity == 0) {
					counter++;
				}
				con.close();
				return counter;
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return counter;
	}

	@Override
	public int totalCustomer() {
		int postcount = 0;
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from customer";
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				postcount++;
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return postcount;
	}

	@Override
	public int totalShopkeeper() {
		int postcount = 0;
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from shopkeeper";
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				postcount++;
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return postcount;
	}

	@Override
	public int totalCategory() {
		int postcount = 0;
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from category";
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				postcount++;
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return postcount;
	}

	@Override
	public int totalPost() {
		int postcount = 0;
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from post";
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				postcount++;
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return postcount;
	}

}
