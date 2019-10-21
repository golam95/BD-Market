package com.bdmarket.serviceImp;

import java.util.List;
import com.bdmarket.dao.CustomerDao;
import com.bdmarket.daoimp.CustomerDaoImp;
import com.bdmarket.model.Customer;
import com.bdmarket.model.CustomerOrder;
import com.bdmarket.model.Post;
import com.bdmarket.service.CustomerService;

public class CustomerServiceImp implements CustomerService {

	CustomerDao customerdao = new CustomerDaoImp();

	@Override
	public List<Post> getpostList(int page1, int page2) {
		return customerdao.getpostList(page1, page2);
	}

	@Override
	public int get_totalrecords() {
		return customerdao.get_totalrecords();
	}

	@Override
	public List<Post> searchpostbyCategory(String category) {
		return customerdao.searchpostbyCategory(category);
	}

	@Override
	public List<Customer> getcustomerList(String email) {
		return customerdao.getcustomerList(email);
	}

	@Override
	public void add_Order(CustomerOrder order) {
		customerdao.add_Order(order);
	}

	@Override
	public List<CustomerOrder> getcustomerOrder(String email) {
		return customerdao.getcustomerOrder(email);
	}

	@Override
	public void updateCustomerprofile(Customer customer) {
		customerdao.updateCustomerprofile(customer);
	}

	@Override
	public boolean check_Customeremail(String customeremail) {
		return customerdao.check_Customeremail(customeremail);
	}

	@Override
	public boolean check_Categorymatch(String categorymatch) {
		return customerdao.check_Categorymatch(categorymatch);
	}

	@Override
	public String getcustomerName(String email) {
		return customerdao.getcustomerName(email);
	}

	@Override
	public void updateForgotpassword(Customer customer) {
		customerdao.updateForgotpassword(customer);
	}

	@Override
	public int getQuantitynumber(int quantity) {
		return customerdao.getQuantitynumber(quantity);
	}

	@Override
	public CustomerOrder getCustomerId(String id) {
		return customerdao.getCustomerId(id);
	}

	@Override
	public void updateCustomerOrderrole(CustomerOrder customerorder) {
		customerdao.updateCustomerOrderrole(customerorder);
	}

	@Override
	public void deleteOnlineorder(int onlineorder) {
		customerdao.deleteOnlineorder(onlineorder);
	}

	@Override
	public boolean check_Locationmatch(String categorymatch) {
		return customerdao.check_Locationmatch(categorymatch);
	}

	@Override
	public List<Post> searchpostbyLocation(String location) {
		return customerdao.searchpostbyLocation(location);
	}

}
