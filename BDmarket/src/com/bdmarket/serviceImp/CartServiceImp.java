package com.bdmarket.serviceImp;

import java.util.List;
import com.bdmarket.dao.CartDao;
import com.bdmarket.daoimp.CartDaoImp;
import com.bdmarket.model.Cart;
import com.bdmarket.model.Post;
import com.bdmarket.service.CartService;

public class CartServiceImp implements CartService {

	CartDao cartDao = new CartDaoImp();

	@Override
	public void add_Cart(Cart cart) {
		cartDao.add_Cart(cart);
	}

	@Override
	public void delete_Cart(int cartId) {
		cartDao.delete_Cart(cartId);
	}

	@Override
	public List<Cart> getcartList(String username) {
		return cartDao.getcartList(username);
	}

	@Override
	public Cart getCart(String cartId) {
		return cartDao.getCart(cartId);
	}

	@Override
	public void updateCart(Post cart) {
		cartDao.updateCart(cart);
	}

	@Override
	public boolean checkcartEmail(String eheck_email) {
		return cartDao.checkcartEmail(eheck_email);
	}

}
