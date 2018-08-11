package com.bochy.dao.impl;

import java.sql.Timestamp;
import java.util.List;

import com.bochy.dao.OrderDao;
import com.bochy.entity.Category;
import com.bochy.entity.Order;
import com.bochy.util.DbUtil;

public class OrderImpl implements OrderDao {
	private DbUtil dbutil=new DbUtil();
	
	public int add(Order order) {     //订单号码   ++!+???    订单总金额,
		String sql="insert into `order`(id,totalMoney,receiver,address,payMethod,orderState) values(?,?,?,?,?,?)";
		
		int num=dbutil.executeUpdate(sql,order.getId(),order.getTotalMoney(),order.getReceiver(),order.getAddress(),order.getPayMethod(),order.getOrderState());
	
		return num;
	}

	
	public int delete(int id) {
		String sql="delete from `order` where id=?";
		int num=dbutil.executeUpdate(sql, id);
		return num;
	}

	
	public int update(Order order) {
		String sql="update `order` set totalMoney=?,receiver=?,address=?,payMethod=?,orderTime=?,orderState=? where id=?";
		int num=dbutil.executeUpdate(sql,order.getTotalMoney(),order.getReceiver(),order.getAddress(),order.getPayMethod(),order.getOrderTime(),order.getOrderState(),order.getId() );
		return num;
	}


	public List<Order> searchOrderById(int id) {
		String sql="select * from `order` where id=? ";
		List<Order> list=dbutil.executeQueryOrder(sql,id);
		return list;
	}


	public List<Order> searchOrderAll() {
		String sql="select * from `order`";
		List<Order> list=dbutil.executeQueryOrder(sql);
		return list;	
	}

	public List<Order> searchOrderByPage(int page) {
		int index=(page-1)*5;  //page不用定义
		String sql="select * from `order` limit ?,5";
		List<Order> list=dbutil.executeQueryOrder(sql, index);
		return list;
		
	}

	
	
}
