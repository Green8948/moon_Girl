package com.bochy.dao;
import java.util.List;

import com.bochy.entity.Customer;

public interface CustomerDao {
	public int add(Customer customer);
    public int update(Customer customer);
    public List<Customer> searchCustomerById(int id);
    public List<Customer> searchCustomerAll();
    public List<Customer> searchCustomerByPage(int page);

}
