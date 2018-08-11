package com.bochy.dao.impl;

import java.util.List;



import com.bochy.dao.CategoryDao;
import com.bochy.entity.Category;
import com.bochy.util.DbUtil;

public class CategoryImpl implements CategoryDao {
	private DbUtil dbutil=new DbUtil();
	public int add(Category category) {
		String sql="insert into category(name,level,pid,categoryTime)values(?,?,?,?)";
		int num=dbutil.executeUpdate(sql,category.getName(),category.getLevel(),category.getPid(),category.getCategoryTime() );
		return num;
	}


	public int delete(int id) {
		String sql="delete from category where id=?";
		int num=dbutil.executeUpdate(sql, id);
		return num;
	}

	
	public int update(Category category) {
		String sql="update category set name=?,level=?,pid=?,categoryTime=? where id=?";
		int num=dbutil.executeUpdate(sql,category.getName(),category.getLevel(),category.getPid(),category.getCategoryTime(),category.getId() );
		return num;
	}

	
	public List<Category> searchCategoryById(int id) {
		String sql="select * from category where id=? ";
		List<Category> list=dbutil.executeQueryCategory(sql, id);
		
		return list;
	}


	public List<Category> searchCategoryAll() {
		String sql="select * from category";
		List<Category> list=dbutil.executeQueryCategory(sql);
		return list;
	}

	
	public List<Category> searchCategoryByPage(int page) {
		int index=(page-1)*5;  //page不用定义
		String sql="select * from category limit ?,5";
		List<Category> list=dbutil.executeQueryCategory(sql, index);
		return list;
	}
	

}
