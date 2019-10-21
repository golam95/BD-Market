package com.bdmarket.service;

import java.util.List;
import com.bdmarket.model.Customer;

public interface CustomerRegService {

	public void add_Customer(Customer customer);
	
	public void delete_Customer(int id);

	public List<Customer> getList();
	
}
