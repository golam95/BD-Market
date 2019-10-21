package com.bdmarket.daoimp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.bdmarket.dao.ShopkeeperDao;
import com.bdmarket.model.Message;
import com.bdmarket.model.MessageShopkeeper;
import com.bdmarket.model.Post;
import com.bdmarket.model.ShopKeeper;
import com.bdmarket.model.UpdateProfile;
import com.bdmarket.util.DBconnection;

public class ShopkeeperdaoImp implements ShopkeeperDao {

	@Override
	public void add_Shopkeeper(ShopKeeper shopkeeper) {

		Connection con = DBconnection.getConnecttion();
		String sql = "insert into shopkeeper " + "(s_name,s_email, s_phone,s_password,s_gender,s_date,shorole) "
				+ "values (?, ?, ?, ?, ?, ?,?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			ps.setString(1, shopkeeper.getShop_name());
			ps.setString(2, shopkeeper.getShop_email());
			ps.setString(3, shopkeeper.getShop_phone());
			ps.setString(4, shopkeeper.getShop_password());
			ps.setString(5, shopkeeper.getShop_gender());
			ps.setString(6, shopkeeper.getShop_date());
			ps.setInt(7, shopkeeper.getShop_role());
			ps.executeUpdate();
			ps.close();
		} catch (Exception ex) {
			ex.printStackTrace();

		}

	}

	@Override
	public void update_Customer(ShopKeeper customer) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete_Shopkeeper(String email) {
		Connection con = DBconnection.getConnecttion();
		String sql = "delete from shopkeeper where s_email='" + email + "'";
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<ShopKeeper> getListDetails() {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from shopkeeper";
		List<ShopKeeper> list = new ArrayList<ShopKeeper>();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("s_id");
				String email = rs.getString("s_name");
				String name = rs.getString("s_email");
				String phoneno = rs.getString("s_phone");
				String password = rs.getString("s_password");
				String gender = rs.getString("s_gender");
				String date = rs.getString("s_date");
				int role = rs.getInt("shorole");
				list.add(new ShopKeeper(id, email, name, phoneno, password, gender, date, role));
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public boolean check_emailshop(String eheck_email) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from shopkeeper where s_email='" + eheck_email + "'";
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
	public boolean login_Shopkeeper(String username, String password, int role) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from shopkeeper where s_email='" + username + "' and s_password='" + password
				+ "' and shorole='" + role + "'";
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
	public boolean check_updateprofile(String email) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from updateprofile where email='" + email + "'";
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
	public void sendMessage(Message message) {

		Connection con = DBconnection.getConnecttion();
		String sql = "insert into contactshopkeeper " + "(email,description, date,role) " + "values (?, ?, ?,?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			ps.setString(1, message.getEmail());
			ps.setString(2, message.getDescription());
			ps.setString(3, message.getData());
			ps.setInt(4, message.getRole());
			ps.executeUpdate();
			ps.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	@Override
	public void addPost(Post post) {
		Connection con = DBconnection.getConnecttion();
		String sql = "insert into post " + "(email,name, description,price,quantity,image,date,typeshop,location) "
				+ "values (?, ?, ?,?,?,?,?,?,?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			ps.setString(1, post.getEmail());
			ps.setString(2, post.getProductname());
			ps.setString(3, post.getDescription());
			ps.setDouble(4, post.getPrice());
			ps.setInt(5, post.getQuantity());
			ps.setString(6, post.getImage());
			ps.setString(7, post.getDate());
			ps.setString(8, post.getTypeofshop());
			ps.setString(9, post.getLocation());
			ps.executeUpdate();
			ps.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

	}

	@Override
	public List<Post> getpostList() {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from post";
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
				String shoplocation = rs.getString("location");
				list.add(
						new Post(id, email, name, description, price, quantity, image, date, typeofshop, shoplocation));
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Message> getmessageList() {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from contactshopkeeper";
		List<Message> list = new ArrayList<Message>();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("id");
				String email = rs.getString("email");
				String name = rs.getString("description");
				String date = rs.getString("date");
				int role = rs.getInt("role");
				list.add(new Message(id, email, name, date, role));
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public ShopKeeper getShopkeeper(String username) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from shopkeeper where s_email='" + username + "'";
		ShopKeeper shopkeeper = new ShopKeeper();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("s_id");
				String email = rs.getString("s_name");
				String name = rs.getString("s_email");
				String phoneno = rs.getString("s_phone");
				String password = rs.getString("s_password");
				String gender = rs.getString("s_gender");
				String date = rs.getString("s_date");
				int role = rs.getInt("shorole");
				shopkeeper = new ShopKeeper(id, email, name, phoneno, password, gender, date, role);
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return shopkeeper;
	}

	@Override
	public UpdateProfile getupdateprofile(String email) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from updateprofile where email='" + email + "'";
		UpdateProfile profile = new UpdateProfile();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("u_id");
				String shopName = rs.getString("shopname");
				String shopLocation = rs.getString("shoplocation");
				String typeofshop = rs.getString("typeshop");
				String productName = rs.getString("productname");
				String profilEmail = rs.getString("email");
				String date = rs.getString("date");
				profile = new UpdateProfile(id, shopName, shopLocation, typeofshop, productName, profilEmail, date);
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return profile;
	}

	@Override
	public void deletePost(int id) {
		Connection con = DBconnection.getConnecttion();
		String sql = "delete from post where pid='" + id + "'";
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public void deleteMessage(int id) {
		Connection con = DBconnection.getConnecttion();
		String sql = "delete from contactshopkeeper where id='" + id + "'";
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public Post getPost(String id) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from post where pid='" + id + "'";
		Post post = new Post();
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
				String shoplocation = rs.getString("location");
				post = new Post(postId, email, name, description, Double.parseDouble(price), Integer.parseInt(quantity),
						image, date, typeofshop, shoplocation);
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return post;
	}

	@Override
	public void updatePost(Post post) {
		Connection con = DBconnection.getConnecttion();
		String sql = "update post set name=?, description=?, quantity=?, price=? where pid=?";
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ps.setString(1, post.getProductname());
			ps.setString(2, post.getDescription());
			ps.setInt(3, post.getQuantity());
			ps.setDouble(4, post.getPrice());
			ps.setInt(5, post.getId());
			ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateprofileContactNo(ShopKeeper contactNo) {
		Connection con = DBconnection.getConnecttion();
		String sql = "update shopkeeper set s_phone=?, s_password=?, s_date=? where s_email=?";
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ps.setString(1, contactNo.getShop_phone());
			ps.setString(2, contactNo.getShop_password());
			ps.setString(3, contactNo.getShop_date());
			ps.setString(4, contactNo.getShop_email());
			ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public int totalPost(String email) {
		int postcount = 0;
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from post where email='" + email + "'";
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
	public int totalOrder(String email) {
		int orderCount = 0;
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from customer_order where onweremail='" + email + "'";
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				orderCount++;
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return orderCount;
	}

	@Override
	public int totalMessage(String email) {
		int messageCount = 0;
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from contactshopkeeper where email='" + email + "'";
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				messageCount++;
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return messageCount;
	}

	@Override
	public String getshopkeeperName(String email) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from shopkeeper where s_email='" + email + "'";
		String getName = "";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				getName = rs.getString("s_name");
				con.close();
				return getName;
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return getName;
	}

	@Override
	public void updateShopkeeperpassword(ShopKeeper shopkeeper) {
		Connection con = DBconnection.getConnecttion();
		String sql = "update shopkeeper set s_password=? where s_email=?";
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ps.setString(1, shopkeeper.getShop_password());
			ps.setString(2, shopkeeper.getShop_email());
			ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public boolean check_contactnoshop(String eheck_email) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from shopkeeper where s_phone='" + eheck_email + "'";
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
	public void updateMessage(Message message) {
		Connection con = DBconnection.getConnecttion();
		String sql = "update contactshopkeeper set role=? where id=?";
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ps.setInt(1, message.getRole());
			ps.setInt(2, message.getId());
			ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public Message getMessagesById(String id) {
		Connection con = DBconnection.getConnecttion();
		String sql = "select * from contactshopkeeper where id='" + id + "'";
		Message shopkeeper = new Message();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				int messageId = rs.getInt("id");
				String email = rs.getString("email");
				String description = rs.getString("description");
				String date = rs.getString("date");
				int role = rs.getInt("role");
				shopkeeper = new Message(messageId, email, description, date, role);
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return shopkeeper;
	}
}
