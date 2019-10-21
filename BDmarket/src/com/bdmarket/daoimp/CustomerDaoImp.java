package com.bdmarket.daoimp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.bdmarket.dao.CustomerDao;
import com.bdmarket.model.Customer;
import com.bdmarket.model.CustomerOrder;
import com.bdmarket.model.MessageShopkeeper;
import com.bdmarket.model.Post;
import com.bdmarket.util.DBconnection;

public class CustomerDaoImp implements CustomerDao {

	private int total_records;

	@Override
	public List<Post> getpostList(int page1, int page2) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select SQL_CALC_FOUND_ROWS * from post limit " + page1 + ", " + page2;
		List<Post> list = new ArrayList<Post>();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("pid");
				String email = rs.getString("email");
				String name = rs.getString("name");
				String description = rs.getString("description");
				double price = rs.getDouble("price");
				int quantity = rs.getInt("quantity");
				String image = rs.getString("image");
				String date = rs.getString("date");
				String typeofshop = rs.getString("typeshop");
				String location = rs.getString("location");
				list.add(new Post(id, email, name, description, price, quantity, image, date, typeofshop, location));
			}
			rs = ps.executeQuery("SELECT COUNT(pid)FROM post");
			if (rs.next()) {
				this.total_records = rs.getInt("COUNT(pid)");
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public int get_totalrecords() {
		return total_records;
	}

	@Override
	public List<Post> searchpostbyCategory(String category) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from post where typeshop='" + category + "'";
		List<Post> list = new ArrayList<Post>();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				int postId = rs.getInt("pid");
				String email = rs.getString("email");
				String name = rs.getString("name");
				String description = rs.getString("description");
				String price = rs.getString("price");
				String quantity = rs.getString("quantity");
				String image = rs.getString("image");
				String date = rs.getString("date");
				String typeofshop = rs.getString("typeshop");
				String location = rs.getString("location");
				list.add(new Post(postId, email, name, description, Double.parseDouble(price),
						Integer.parseInt(quantity), image, date, typeofshop, location));
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Customer> getcustomerList(String email) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from customer where c_email='" + email + "'";
		List<Customer> list = new ArrayList<Customer>();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("c_id");
				String customeremail = rs.getString("c_email");
				String phone = rs.getString("c_phone");
				String password = rs.getString("c_password");
				String gender = rs.getString("c_gender");
				String date = rs.getString("c_date");
				String name = rs.getString("c_name");
				int role = rs.getInt("cus_role");
				list.add(new Customer(id, name, customeremail, phone, password, gender, date, role));
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public void add_Order(CustomerOrder order) {
		Connection con = DBconnection.getConnecttion();
		String sql = "insert into customer_order"
				+ "(productname,quantity,description,price,date,onweremail,customeremail,imagelink,role,customeraddress,customercontactno) "
				+ "values (?, ?, ?, ?, ?,?,?,?,?,?,?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			ps.setString(1, order.getProductName());
			ps.setInt(2, order.getQuantity());
			ps.setString(3, order.getProductDescription());
			ps.setDouble(4, order.getProductPrice());
			ps.setString(5, order.getOrderDate());
			ps.setString(6, order.getOwnerEmail());
			ps.setString(7, order.getCustomerEmail());
			ps.setString(8, order.getImagelink());
			ps.setInt(9, order.getRole());
			ps.setString(10, order.getCustomerAddress());
			ps.setString(11, order.getCustomerContactNo());
			ps.executeUpdate();
			ps.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	@Override
	public List<CustomerOrder> getcustomerOrder(String email) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from customer_order where onweremail ='" + email + "'";
		List<CustomerOrder> list = new ArrayList<CustomerOrder>();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				int postId = rs.getInt("orderId");
				String productName = rs.getString("productname");
				int productQuantity = rs.getInt("quantity");
				String productDescription = rs.getString("description");
				double productPrice = rs.getDouble("price");
				String productDate = rs.getString("date");
				String OwnerEmail = rs.getString("onweremail");
				String customerEmail = rs.getString("customeremail");
				String ImageLink = rs.getString("imagelink");
				int Role = rs.getInt("role");
				String customerAddress = rs.getString("customeraddress");
				String customerContactNo = rs.getString("customercontactno");
				list.add(new CustomerOrder(postId, productName, productQuantity, productDescription, productPrice,
						productDate, OwnerEmail, customerEmail, ImageLink, Role, customerAddress, customerContactNo));
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public void updateCustomerprofile(Customer customer) {
		Connection con = DBconnection.getConnecttion();
		String sql = "update customer set c_phone=?, c_password=?,c_name=? where c_email=?";
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ps.setString(1, customer.getCus_phone());
			ps.setString(2, customer.getCus_password());
			ps.setString(3, customer.getCus_name());
			ps.setString(4, customer.getCus_email());
			ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public boolean check_Customeremail(String customeremail) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from customer where c_email='" + customeremail + "'";
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
	public boolean check_Categorymatch(String categorymatch) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from post where typeshop='" + categorymatch + "'";
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
	public String getcustomerName(String email) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from customer where c_email='" + email + "'";
		String getName = "";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				getName = rs.getString("c_name");
				con.close();
				return getName;
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return getName;
	}

	@Override
	public void updateForgotpassword(Customer customer) {
		Connection con = DBconnection.getConnecttion();
		String sql = "update customer set c_password=? where c_email=?";
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ps.setString(1, customer.getCus_password());
			ps.setString(2, customer.getCus_email());
			ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public int getQuantitynumber(int quantity) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from post where pid='" + quantity + "'";
		int getQuantity = 0;
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				getQuantity = rs.getInt("quantity");
				con.close();
				return getQuantity;
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return getQuantity;
	}

	@Override
	public CustomerOrder getCustomerId(String id) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from customer_order where orderId='" + id + "'";
		CustomerOrder shopkeeper = new CustomerOrder();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				int postId = rs.getInt("orderId");
				String productName = rs.getString("productname");
				int productQuantity = rs.getInt("quantity");
				String productDescription = rs.getString("description");
				double productPrice = rs.getDouble("price");
				String productDate = rs.getString("date");
				String OwnerEmail = rs.getString("onweremail");
				String customerEmail = rs.getString("customeremail");
				String ImageLink = rs.getString("imagelink");
				int Role = rs.getInt("role");
				String customerAddress = rs.getString("customeraddress");
				String customerContactNo = rs.getString("customercontactno");
				shopkeeper = new CustomerOrder(postId, productName, productQuantity, productDescription, productPrice,
						productDate, OwnerEmail, customerEmail, ImageLink, Role, customerAddress, customerContactNo);
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return shopkeeper;
	}

	@Override
	public void updateCustomerOrderrole(CustomerOrder customerorder) {
		Connection con = DBconnection.getConnecttion();
		String sql = "update customer_order set role=? where orderId=?";
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ps.setInt(1, customerorder.getRole());
			ps.setInt(2, customerorder.getOrderId());
			ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteOnlineorder(int onlineorder) {
		Connection con = DBconnection.getConnecttion();
		String sql = "delete from customer_order where orderId='" + onlineorder + "'";
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Post> searchpostbyLocation(String location) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from post where location='" + location + "'";
		List<Post> list = new ArrayList<Post>();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				int postId = rs.getInt("pid");
				String email = rs.getString("email");
				String name = rs.getString("name");
				String description = rs.getString("description");
				String price = rs.getString("price");
				String quantity = rs.getString("quantity");
				String image = rs.getString("image");
				String date = rs.getString("date");
				String typeofshop = rs.getString("typeshop");
				String locatione = rs.getString("location");
				list.add(new Post(postId, email, name, description, Double.parseDouble(price),
						Integer.parseInt(quantity), image, date, typeofshop, locatione));
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public boolean check_Locationmatch(String categorymatch) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from post where location='" + categorymatch + "'";
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
