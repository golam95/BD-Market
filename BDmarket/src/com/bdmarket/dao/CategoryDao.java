package com.bdmarket.dao;

import java.util.List;
import com.bdmarket.model.Category;

public interface CategoryDao {

	public void addCategory(Category category);

	public void deleteCategory(int categoryId);

	public List<Category> getcategoryList();

}
