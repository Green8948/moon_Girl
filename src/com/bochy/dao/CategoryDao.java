package com.bochy.dao;

import java.util.List;

import com.bochy.entity.Category;

public interface CategoryDao {
		public int add(Category category);
	    public int delete(int id);
	    public int update(Category category);
	    public List<Category> searchCategoryById(int id);
	    public List<Category> searchCategoryAll();
	    public List<Category> searchCategoryByPage(int page);
	
	
}
