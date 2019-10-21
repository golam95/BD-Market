package com.bdmarket.serviceImp;

import com.bdmarket.dao.StatisticsDao;
import com.bdmarket.daoimp.StatisticsDaoImpl;
import com.bdmarket.service.StatisticsService;

public class StatisticsServiceImpl implements StatisticsService {

	StatisticsDao statisticdao = new StatisticsDaoImpl();

	@Override
	public int checkNotification(String email) {
		return statisticdao.checkNotification(email);
	}

	@Override
	public int checkMessage(String email) {
		return statisticdao.checkMessage(email);
	}

	@Override
	public int checkStock(String email) {
		return statisticdao.checkStock(email);
	}

	@Override
	public int totalCustomer() {
		return statisticdao.totalCustomer();
	}

	@Override
	public int totalShopkeeper() {
		return statisticdao.totalShopkeeper();
	}

	@Override
	public int totalCategory() {
		return statisticdao.totalCategory();
	}

	@Override
	public int totalPost() {
		return statisticdao.totalPost();
	}

}
