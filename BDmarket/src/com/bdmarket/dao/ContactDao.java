package com.bdmarket.dao;

import java.util.List;
import com.bdmarket.model.Contact;

public interface ContactDao {

	public void add_contact(Contact contact);

	public void delete_contact(int contact_id);

	public List<Contact> getcontactList();

}
