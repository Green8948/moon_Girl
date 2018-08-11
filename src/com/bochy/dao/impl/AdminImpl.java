package com.bochy.dao.impl;

import java.util.List;

import com.bochy.dao.AdminDao;
import com.bochy.entity.Admin;
import com.bochy.entity.Category;
import com.bochy.util.DbUtil;
   //查询，修改下密码
public class AdminImpl implements AdminDao {

	private DbUtil dbutil=new DbUtil();
	public int update(Admin admin) {
		String sql="update admin set username=?,password=? where id=?";
		int num=dbutil.executeUpdate(sql,admin.getUsername(),admin.getPassword(),admin.getId() );
		return num;
		
	}
	
	

	public List<Admin> searchAdminById(int id) {
		String sql="select * from admin where id=? ";
		List<Admin> list=dbutil.executeQueryAdmin(sql, id);
		
		return list;
		
	}


	public List<Admin> searchAdminAll() {
		String sql="select * from admin";
		List<Admin> list=dbutil.executeQueryAdmin(sql);
		return list;
		
	}


	public List<Admin> searchAdminByPage(int page) {
		int index=(page-1)*5;  //page不用定义
		String sql="select * from admin limit ?,5";
		List<Admin> list=dbutil.executeQueryAdmin(sql, index);
		return list;
		
	}

}
