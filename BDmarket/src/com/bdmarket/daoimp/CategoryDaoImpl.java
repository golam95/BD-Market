package com.bdmarket.daoimp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.bdmarket.dao.CategoryDao;
import com.bdmarket.model.Cart;
import com.bdmarket.model.Category;
import com.bdmarket.util.DBconnection;

public class CategoryDaoImpl implements CategoryDao {

	@Override
	public void addCategory(Category category) {
		Connection con = DBconnection.getConnecttion();
		String sql = "insert into category " + "(shopcategory) " + "values (?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			ps.setString(1, category.getShopcategory());
			ps.executeUpdate();
			ps.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

	}

	@Override
	public void deleteCategory(int categoryId) {
		Connection con = DBconnection.getConnecttion();
		String sql = "delete from category where id='" + categoryId + "'";
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Category> getcategoryList() {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from category";
		List<Category> list = new ArrayList<Category>();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("id");
				String category = rs.getString("shopcategory");
				list.add(new Category(id, category));
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

}
