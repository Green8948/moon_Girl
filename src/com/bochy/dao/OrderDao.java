package com.bochy.dao;

import java.util.List;
import com.bochy.entity.Order;

public interface OrderDao {
	public int add(Order order);
    public int delete(int id);
    public int update(Order order);
    public List<Order> searchOrderById(int id);
    public List<Order> searchOrderAll();
    public List<Order> searchOrderByPage(int page);

}
