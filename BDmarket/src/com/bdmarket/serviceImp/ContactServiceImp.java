package com.bdmarket.serviceImp;

import com.bdmarket.dao.ContactDao;
import com.bdmarket.daoimp.ContactImp;
import com.bdmarket.model.Contact;
import com.bdmarket.service.ContactService;

public class ContactServiceImp implements ContactService {

	ContactDao contactDao = new ContactImp();

	@Override
	public void add_contact(Contact contact) {
		contactDao.add_contact(contact);
	}

	@Override
	public void delete_contact(int contact_id) {
		contactDao.delete_contact(contact_id);
	}

}
