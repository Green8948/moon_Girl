package com.bochy.customerServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bochy.dao.impl.AdminImpl;
import com.bochy.dao.impl.CustomerImpl;
import com.bochy.entity.Admin;
import com.bochy.entity.Customer;

public class CustomerServletRegister extends HttpServlet {

	public CustomerServletRegister() {

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
		    String   zhanghao=request.getParameter("zhanghao");
		    String   password=request.getParameter("password");
		    System.out.println(zhanghao+password); 
		    /*int id=new Integer(request.getParameter("id"));*/
		                   
		   
		    Customer customer=new Customer();
		    customer.setName(zhanghao);
		    customer.setPassword(password);
		    /*customer.setId(id);*/
		    System.out.println(password+zhanghao);
		    customer.setAddress("address");
			customer.setEmail("email");
			customer.setRealname("realname");
			customer.setTel("tel");
			
			
			CustomerImpl customerImpl=new CustomerImpl();
			int num=customerImpl.add(customer);
			System.out.println(num);
				 
			
			      request.setAttribute("num",num);
		      	  RequestDispatcher   rd=request.getRequestDispatcher("./product/productAddTest.jsp");
		      	  rd.forward(request, response);
			
    }
	

	public void init() throws ServletException {

	}

}
