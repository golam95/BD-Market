package com.bdmarket.dao;

import java.util.List;
import com.bdmarket.model.Customer;

public interface CustomerRegDao {

	public void add_Customer(Customer customer);

	public void update_Customer(Customer customer);

	public void delete_Customer(int id);

	public List<Customer> getList();
	
	public boolean check_emailcus(String eheck_email);
	
	public boolean check_contactnocus(String check_contactno);
	
	public boolean login_customer(String username, String password,int role);
	
	public boolean login_admin(String username, String password,int role);
	
	
}
