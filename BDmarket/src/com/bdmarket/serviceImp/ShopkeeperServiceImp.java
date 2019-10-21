package com.bdmarket.serviceImp;

import java.util.List;
import com.bdmarket.dao.ShopkeeperDao;
import com.bdmarket.daoimp.ShopkeeperdaoImp;
import com.bdmarket.model.Message;
import com.bdmarket.model.Post;
import com.bdmarket.model.ShopKeeper;
import com.bdmarket.model.UpdateProfile;
import com.bdmarket.service.ShopkeeperService;

public class ShopkeeperServiceImp implements ShopkeeperService {

	ShopkeeperDao shopkeeperdao = new ShopkeeperdaoImp();

	@Override
	public void sendMessage(Message message) {
		shopkeeperdao.sendMessage(message);
	}

	@Override
	public void addPost(Post post) {
		shopkeeperdao.addPost(post);
	}

	@Override
	public List<Post> getpostList() {
		return shopkeeperdao.getpostList();
	}

	@Override
	public List<Message> getmessageList() {
		return shopkeeperdao.getmessageList();
	}

	@Override
	public List<ShopKeeper> getListDetails() {
		return shopkeeperdao.getListDetails();
	}

	@Override
	public ShopKeeper getShopkeeper(String username) {
		return shopkeeperdao.getShopkeeper(username);
	}

	@Override
	public void deletePost(int id) {
		shopkeeperdao.deletePost(id);

	}

	@Override
	public void deleteMessage(int id) {
		shopkeeperdao.deleteMessage(id);
	}

	@Override
	public Post getPost(String id) {
		return shopkeeperdao.getPost(id);
	}

	@Override
	public void updatePost(Post post) {
		shopkeeperdao.updatePost(post);

	}

	@Override
	public void updateprofileContactNo(ShopKeeper contactNo) {
		shopkeeperdao.updateprofileContactNo(contactNo);

	}

	@Override
	public UpdateProfile getupdateprofile(String email) {
		return shopkeeperdao.getupdateprofile(email);
	}

	@Override
	public int totalPost(String email) {
		return shopkeeperdao.totalPost(email);
	}

	@Override
	public int totalOrder(String email) {
		return shopkeeperdao.totalOrder(email);
	}

	@Override
	public int totalMessage(String email) {
		return shopkeeperdao.totalMessage(email);
	}

	@Override
	public String getshopkeeperName(String email) {
		return shopkeeperdao.getshopkeeperName(email);
	}

	@Override
	public void updateShopkeeperpassword(ShopKeeper shopkeeper) {
		shopkeeperdao.updateShopkeeperpassword(shopkeeper);
	}

	@Override
	public boolean check_emailshop(String eheck_email) {
		return shopkeeperdao.check_emailshop(eheck_email);
	}

	@Override
	public void add_Shopkeeper(ShopKeeper customer) {
		shopkeeperdao.add_Shopkeeper(customer);

	}

	@Override
	public boolean check_contactnoshop(String eheck_email) {
		return shopkeeperdao.check_contactnoshop(eheck_email);
	}

	@Override
	public boolean check_updateprofile(String email) {
		return shopkeeperdao.check_updateprofile(email);
	}

	@Override
	public void delete_Shopkeeper(String email) {
		shopkeeperdao.delete_Shopkeeper(email);
	}

	@Override
	public void updateMessage(Message message) {
		shopkeeperdao.updateMessage(message);		
	}

	@Override
	public Message getMessagesById(String id) {
		return shopkeeperdao.getMessagesById(id);
	}

}
