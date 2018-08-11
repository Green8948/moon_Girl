package com.bochy.dao.impl;

import java.util.List;
import com.bochy.dao.CustomerDao;
import com.bochy.entity.Customer;
import com.bochy.util.DbUtil;

public class CustomerImpl implements CustomerDao{
	private DbUtil dbutil=new DbUtil();
	public int add(Customer customer) {
		String sql="insert into customer(id,name,password,realname,email,address,tel)values(?,?,?,?,?,?,?)";
		int num=dbutil.executeUpdate(sql,customer.getId(),customer.getName(),customer.getPassword(),customer.getRealname(),customer.getEmail(),customer.getAddress(),customer.getTel() );
		return num;
	}
    public int update(Customer customer) {
		String sql="update customer set name=?,password=?,realname=?,email=?,address=?,tel=? where id=?";
		int num=dbutil.executeUpdate(sql,customer.getName(),customer.getPassword(),customer.getRealname(),customer.getEmail(),customer.getAddress(),customer.getTel(),customer.getId() );
		return num;
	}
	public List<Customer> searchCustomerById(int id) {
		String sql="select * from customer where id=? ";
		List<Customer> list=dbutil.executeQueryCustomer(sql, id);
		
		return list;
	}
	public List<Customer> searchCustomerAll() {
		String sql="select * from customer";
		List<Customer> list=dbutil.executeQueryCustomer(sql);
		return list;
	}
	public List<Customer> searchCustomerByPage(int page) {
		int index=(page-1)*5;  //page不用定义
		String sql="select * from customer limit ?,5";
		List<Customer> list=dbutil.executeQueryCustomer(sql, index);
		return list;
	}

}
