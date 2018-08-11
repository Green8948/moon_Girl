package com.bochy.customerServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bochy.dao.impl.OrderImpl;
import com.bochy.entity.Order;

public class OrderServletOne extends HttpServlet {

	public OrderServletOne() {
		super();
	}

	public void destroy() {

	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

    protected void service(HttpServletRequest req, HttpServletResponse resp)
    		throws ServletException, IOException {
    	 doPost(req, resp);
    }
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	    String   strid=request.getParameter("id");
	    System.out.println(strid+"==================");
	    int      id=Integer.parseInt(strid);
	    
		OrderImpl orderImpl=new OrderImpl();
		List<Order> list=orderImpl.searchOrderById(id);
    	System.out.println(list.size()+"  "+"row3119");

    	request.setAttribute("list", list);
	    RequestDispatcher   rd=request.getRequestDispatcher("./order/MyOrder.jsp");
	    rd.forward(request, response); 
	
	}

	public void init() throws ServletException {

	}

}
