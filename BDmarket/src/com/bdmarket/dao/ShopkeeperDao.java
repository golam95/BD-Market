package com.bdmarket.dao;

import java.util.List;
import com.bdmarket.model.Message;
import com.bdmarket.model.MessageShopkeeper;
import com.bdmarket.model.Post;
import com.bdmarket.model.ShopKeeper;
import com.bdmarket.model.UpdateProfile;

public interface ShopkeeperDao {

	public void add_Shopkeeper(ShopKeeper customer);

	public void update_Customer(ShopKeeper customer);

	public void delete_Shopkeeper(String email);

	public List<ShopKeeper> getListDetails();

	public boolean check_emailshop(String eheck_email);

	public boolean check_contactnoshop(String eheck_email);

	public boolean login_Shopkeeper(String username, String password, int role);

	public boolean check_updateprofile(String email);

	public void sendMessage(Message message);

	public void addPost(Post post);

	public List<Post> getpostList();

	public List<Message> getmessageList();

	public void updateMessage(Message message);// yes bro

	public ShopKeeper getShopkeeper(String username);

	public UpdateProfile getupdateprofile(String email);

	public void deletePost(int id);

	public void deleteMessage(int id);

	public Post getPost(String id);

	public void updatePost(Post post);

	public void updateprofileContactNo(ShopKeeper contactNo);

	// just the count details

	public int totalPost(String email);

	public int totalOrder(String email);

	public int totalMessage(String email);

	//
	public String getshopkeeperName(String email);

	public void updateShopkeeperpassword(ShopKeeper shopkeeper);
	
	public Message getMessagesById(String id);

}
