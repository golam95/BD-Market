package com.bdmarket.service;

import java.util.List;
import com.bdmarket.model.Message;
import com.bdmarket.model.Post;
import com.bdmarket.model.ShopKeeper;
import com.bdmarket.model.UpdateProfile;

public interface ShopkeeperService {
	
	public void add_Shopkeeper(ShopKeeper customer);

	public void sendMessage(Message message);

	public void addPost(Post post);

	public List<ShopKeeper> getListDetails();

	public List<Post> getpostList();

	public List<Message> getmessageList();

	public ShopKeeper getShopkeeper(String username);

	public UpdateProfile getupdateprofile(String email);
	
	public boolean check_emailshop(String eheck_email);
	
	public boolean check_contactnoshop(String eheck_email);

	public void deletePost(int id);

	public void deleteMessage(int id);

	public Post getPost(String id);

	public void updatePost(Post post);

	public void updateprofileContactNo(ShopKeeper contactNo);


	// new post is added
	
	public String getshopkeeperName(String email);
	
	public int totalPost(String email);

	public int totalOrder(String email);

	public int totalMessage(String email);
	
	//
	public void updateShopkeeperpassword(ShopKeeper shopkeeper);
	
	public boolean check_updateprofile(String email);
	
	public void delete_Shopkeeper(String email);
	
	public void updateMessage(Message message);
	
	public Message getMessagesById(String id);
}
