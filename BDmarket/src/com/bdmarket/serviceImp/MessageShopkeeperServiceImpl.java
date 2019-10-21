package com.bdmarket.serviceImp;

import java.util.List;
import com.bdmarket.dao.MessageShopkeeperDao;
import com.bdmarket.daoimp.MessageShopkeeperDaoImpl;
import com.bdmarket.model.MessageShopkeeper;
import com.bdmarket.service.MessageShopkeeperService;

public class MessageShopkeeperServiceImpl implements MessageShopkeeperService {

	MessageShopkeeperDao messageshopkeeperdao = new MessageShopkeeperDaoImpl();

	@Override
	public void sendMessageshopkeeper(MessageShopkeeper messageshopkeeper) {
		messageshopkeeperdao.sendMessageshopkeeper(messageshopkeeper);
	}

	@Override
	public void deleteShopkeepermessage(int contact_id) {
		messageshopkeeperdao.deleteShopkeepermessage(contact_id);
	}

	@Override
	public List<MessageShopkeeper> getListMessageshopkeeper(String email) {
		return messageshopkeeperdao.getListMessageshopkeeper(email);
	}

	@Override
	public MessageShopkeeper getMessageshopkeeperId(String id) {
		return messageshopkeeperdao.getMessageshopkeeperId(id);
	}

	@Override
	public void updateMessagerole(MessageShopkeeper messageshopkeeper) {
		messageshopkeeperdao.updateMessagerole(messageshopkeeper);
	}

}
