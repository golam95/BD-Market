package com.bdmarket.dao;

import java.util.List;
import com.bdmarket.model.MessageShopkeeper;
import com.bdmarket.model.ShopKeeper;

public interface MessageShopkeeperDao {

	public void sendMessageshopkeeper(MessageShopkeeper messageshopkeeper);

	public void deleteShopkeepermessage(int contact_id);

	public List<MessageShopkeeper> getListMessageshopkeeper(String email);
	
	public MessageShopkeeper getMessageshopkeeperId(String id);
	
	public void updateMessagerole(MessageShopkeeper messageshopkeeper);
	
	
}
