package com.bdmarket.service;

public interface StatisticsService {

	public int checkNotification(String email);

	public int checkMessage(String email);

	public int checkStock(String email);

	public int totalCustomer();

	public int totalShopkeeper();

	public int totalCategory();

	public int totalPost();

}
