package com.bdmarket.daoimp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.bdmarket.dao.MessageShopkeeperDao;
import com.bdmarket.model.MessageShopkeeper;
import com.bdmarket.util.DBconnection;

public class MessageShopkeeperDaoImpl implements MessageShopkeeperDao {

	@Override
	public void sendMessageshopkeeper(MessageShopkeeper messageshopkeeper) {
		Connection con = DBconnection.getConnecttion();
		String sql = "Insert into messageshopkeeper" + "(shopkeeperemail, customeremail ,comment ,role ,date) "
				+ "values (?, ?, ?, ?, ?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			ps.setString(1, messageshopkeeper.getShoopkeeperemail());
			ps.setString(2, messageshopkeeper.getCustomeremail());
			ps.setString(3, messageshopkeeper.getComment());
			ps.setInt(4, messageshopkeeper.getRole());
			ps.setString(5, messageshopkeeper.getDate());
			ps.executeUpdate();
			ps.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	@Override
	public void deleteShopkeepermessage(int contact_id) {
		Connection con = DBconnection.getConnecttion();
		String sql = "Delete from messageshopkeeper where id='" + contact_id + "'";
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<MessageShopkeeper> getListMessageshopkeeper(String email) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from messageshopkeeper where shopkeeperemail='" + email + "'";
		List<MessageShopkeeper> list = new ArrayList<MessageShopkeeper>();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("id");
				String shopkeeperemail = rs.getString("shopkeeperemail");
				String customeremail = rs.getString("customeremail");
				String comment = rs.getString("comment");
				int role = rs.getInt("role");
				String date = rs.getString("date");
				list.add(new MessageShopkeeper(id, shopkeeperemail, customeremail, comment, role, date));
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public MessageShopkeeper getMessageshopkeeperId(String id) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from messageshopkeeper where id='" + id + "'";
		MessageShopkeeper shopkeeper = new MessageShopkeeper();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				int messageId = rs.getInt("id");
				String shopkeeperemail = rs.getString("shopkeeperemail");
				String customeremail = rs.getString("customeremail");
				String comment = rs.getString("comment");
				int role = rs.getInt("role");
				String date = rs.getString("date");
				shopkeeper = new MessageShopkeeper(messageId, shopkeeperemail, customeremail, comment, role, date);
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return shopkeeper;
	}

	@Override
	public void updateMessagerole(MessageShopkeeper messageshopkeeper) {
		Connection con = DBconnection.getConnecttion();
		String sql = "update messageshopkeeper set role=? where id=?";
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ps.setInt(1, messageshopkeeper.getRole());
			ps.setInt(2, messageshopkeeper.getId());
			ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
