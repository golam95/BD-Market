package com.bdmarket.daoimp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.bdmarket.dao.CartDao;
import com.bdmarket.model.Cart;
import com.bdmarket.model.CustomerOrder;
import com.bdmarket.model.Message;
import com.bdmarket.model.Post;
import com.bdmarket.model.ShopKeeper;
import com.bdmarket.util.DBconnection;

public class CartDaoImp implements CartDao {

	@Override
	public void add_Cart(Cart cart) {
		Connection con = DBconnection.getConnecttion();
		String sql = "insert into cart "
				+ "(productname, quantity,description,price ,date,oweremail,imglink,customeremail,productid) "
				+ "values (?, ?, ?, ?, ?,?,?,?,?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			ps.setString(1, cart.getProductName());
			ps.setInt(2, cart.getQuantity());
			ps.setString(3, cart.getDescription());
			ps.setDouble(4, cart.getPrice());
			ps.setString(5, cart.getDate());
			ps.setString(6, cart.getOwneremail());
			ps.setString(7, cart.getImlink());
			ps.setString(8, cart.getCustomerEmail());
			ps.setInt(9, cart.getProductId());
			ps.executeUpdate();
			ps.close();
		} catch (Exception ex) {
			ex.printStackTrace();

		}

	}

	@Override
	public void delete_Cart(int cartId) {
		Connection con = DBconnection.getConnecttion();
		String sql = "delete from cart where cid='" + cartId + "'";
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Cart> getcartList(String username) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from cart where customeremail='" + username + "'";
		List<Cart> list = new ArrayList<Cart>();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("cid");
				String name = rs.getString("productname");
				String quantity = rs.getString("quantity");
				String description = rs.getString("description");
				String price = rs.getString("price");
				String date = rs.getString("date");
				String email = rs.getString("oweremail");
				String imglink = rs.getString("imglink");
				String customeremail = rs.getString("customeremail");
				int productId=rs.getInt("productid");
				list.add(new Cart(id, name, Integer.parseInt(quantity), description, Double.parseDouble(price), date,
						email, imglink, customeremail,productId));
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Cart getCart(String cartId) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from cart where cid='" + cartId + "'";
		Cart cart = new Cart();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("cid");
				String productName = rs.getString("productname");
				String productQuantity = rs.getString("quantity");
				String productDescription = rs.getString("description");
				String productPrice = rs.getString("price");
				String date = rs.getString("date");
				String OnwerEmail = rs.getString("oweremail");
				String imagelink = rs.getString("imglink");
				String customerEmail = rs.getString("customeremail");
				int productId=rs.getInt("productid");
				cart = new Cart(id, productName, Integer.parseInt(productQuantity), productDescription,
						Double.parseDouble(productPrice), date, OnwerEmail, imagelink, customerEmail,productId);
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cart;
	}

	@Override
	public void updateCart(Post cart) {
		Connection con = DBconnection.getConnecttion();
		String sql = "update post set quantity=? where email=?";
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ps.setInt(1, cart.getQuantity());
			ps.setString(2, cart.getEmail());
			ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public boolean checkcartEmail(String eheck_email) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from cart where customeremail='" + eheck_email + "'";
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
}
