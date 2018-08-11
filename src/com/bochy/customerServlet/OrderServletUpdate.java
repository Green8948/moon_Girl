package com.bochy.customerServlet;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bochy.dao.ProductDao;
import com.bochy.dao.impl.OrderImpl;
import com.bochy.entity.Order;
import com.bochy.entity.Product;

public class OrderServletUpdate extends HttpServlet {

	public OrderServletUpdate() {
	}
	public void destroy() {
	}
	protected void service(HttpServletRequest request, HttpServletResponse response)
	    		throws ServletException, IOException {
	            doPost(request,response);
	    }
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	    String   strid=request.getParameter("id");
	    int         id=Integer.parseInt(strid);
	    
	    
	   
	    OrderImpl orderImpl=new OrderImpl();
		List<Order> list=orderImpl.searchOrderById(id);
    	System.out.println(list.size()+"  "+"row");
	    
        Iterator<Order> it=list.iterator();
        while(it.hasNext()){
               Order order=it.next();
     System.out.println(order.getOrderState()+order.getAddress()+order.getReceiver()+order.getId());
        }
	    request.setAttribute("list", list);
	    
	    RequestDispatcher    rd=request.getRequestDispatcher("./order/MyOrder.jsp");
	    rd.forward(request, response);

		
		
		
		
		
	}

	public void init() throws ServletException {
		
	}

}
