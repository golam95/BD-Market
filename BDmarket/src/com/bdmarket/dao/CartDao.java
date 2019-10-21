package com.bdmarket.dao;

import java.util.List;
import com.bdmarket.model.Cart;
import com.bdmarket.model.Post;


public interface CartDao {

	public void add_Cart(Cart cart);

	public void delete_Cart(int cartId);

	public List<Cart> getcartList(String username);
	
	public Cart getCart(String cartId);
	
	public void updateCart(Post cart);
	
	public boolean checkcartEmail(String eheck_email);

}
