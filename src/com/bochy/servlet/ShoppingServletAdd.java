package com.bochy.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bochy.dao.impl.OrderImpl;
import com.bochy.entity.Order;

public class ShoppingServletAdd extends HttpServlet {
	public ShoppingServletAdd() {
		super();
	}
	public void destroy() {
	}
    protected void service(HttpServletRequest request, HttpServletResponse response)
	    		throws ServletException, IOException {
		      doPost(request, response);
	    }
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		  request.setCharacterEncoding("utf-8");
		  String    receiver=request.getParameter("receiver");
		  String   address=request.getParameter("address");
		  String    payMethod=request.getParameter("payMethod");
		  String   orderState=request.getParameter("orderState");
		  //  String totalMoney1= request.getParameter("totalMoney");
		   // String  id= request.getParameter("id");
		    //int   totalMoney=Integer.parseInt(totalMoney1);
		 
		   
		    Order order=new Order();
			
		//	order.setId(id);
		//	order.setTotalMoney(totalMoney);
		    order.setReceiver(receiver);
		    order.setAddress(address);
			order.setPayMethod(payMethod);
			//order.setOrderTime(orderTime);
			order.setOrderState(orderState);
			OrderImpl orderImpl=new OrderImpl();
			int num=orderImpl.add(order);
			System.out.println(num+"======================");
			 response.sendRedirect("OrdersServletAll?page=1");
		  
		  
		  
		  
	}

	public void init() throws ServletException {
	
	}

}
