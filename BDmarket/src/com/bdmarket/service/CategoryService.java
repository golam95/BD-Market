package com.bdmarket.service;

import java.util.List;
import com.bdmarket.model.Category;

public interface CategoryService {
	
	public void addCategory(Category category);

	public void deleteCategory(int categoryId);

	public List<Category> getcategoryList();
	
}
