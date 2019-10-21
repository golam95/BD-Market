package com.bdmarket.service;

import java.util.List;
import com.bdmarket.model.MessageShopkeeper;

public interface MessageShopkeeperService {
	
	public void sendMessageshopkeeper(MessageShopkeeper messageshopkeeper);

	public void deleteShopkeepermessage(int contact_id);

	public List<MessageShopkeeper> getListMessageshopkeeper(String email);
	
	public MessageShopkeeper getMessageshopkeeperId(String id);
	
	public void updateMessagerole(MessageShopkeeper messageshopkeeper);
}
