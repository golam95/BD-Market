package com.bdmarket.dao;

import java.util.List;
import com.bdmarket.model.Post;
import com.bdmarket.model.Cart;
import com.bdmarket.model.Customer;
import com.bdmarket.model.CustomerOrder;

public interface CustomerDao {
	
	public void updateCustomerprofile(Customer customer);

	public List<Post> searchpostbyCategory(String category);
	
	public List<Post> searchpostbyLocation(String location);

	public List<Post> getpostList(int page1, int page2);

	public int get_totalrecords();

	public List<Customer> getcustomerList(String email);

	public void add_Order(CustomerOrder order);
	
	public List<CustomerOrder> getcustomerOrder(String email);
	
	public boolean check_Customeremail(String customeremail);
	
	public boolean check_Categorymatch(String categorymatch);
	
	public boolean check_Locationmatch(String categorymatch);//new
	
	
	//
	public String getcustomerName(String email);
	
	public void updateForgotpassword(Customer customer);
	
	public int getQuantitynumber(int quantity);
	
	public CustomerOrder getCustomerId(String id);
	
	public void updateCustomerOrderrole(CustomerOrder customerorder);
	
	public void deleteOnlineorder(int onlineorder);
	
	
	
	
}
