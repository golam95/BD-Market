package com.bdmarket.serviceImp;

import java.util.List;
import com.bdmarket.dao.CategoryDao;
import com.bdmarket.daoimp.CategoryDaoImpl;
import com.bdmarket.model.Category;
import com.bdmarket.service.CategoryService;

public class CategoryServiceImpl implements CategoryService {

	CategoryDao categorydao=new CategoryDaoImpl();
	
	@Override
	public void addCategory(Category category) {
		categorydao.addCategory(category);	
	}

	@Override
	public void deleteCategory(int categoryId) {
		categorydao.deleteCategory(categoryId);	
	}

	@Override
	public List<Category> getcategoryList() {
		return categorydao.getcategoryList();
	}

}
