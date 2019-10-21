package com.bdmarket.serviceImp;

import java.util.List;
import com.bdmarket.dao.CustomerRegDao;
import com.bdmarket.daoimp.CustomerRegImp;
import com.bdmarket.model.Customer;
import com.bdmarket.service.CustomerRegService;

public class CustomerRegServiceImp implements CustomerRegService {

	CustomerRegDao regDao = new CustomerRegImp();

	@Override
	public void add_Customer(Customer customer) {
		regDao.add_Customer(customer);
	}

	@Override
	public void delete_Customer(int id) {
		regDao.delete_Customer(id);
	}

	@Override
	public List<Customer> getList() {
		return regDao.getList();
	}

}
