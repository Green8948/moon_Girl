package com.bochy.customerServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bochy.dao.ProductDao;
import com.bochy.dao.impl.CategoryImpl;

public class CategoriesServletDelete extends HttpServlet {
	public CategoriesServletDelete() {
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
		String   strid=request.getParameter("id");
	    System.out.println(strid);
	    int      id=Integer.parseInt(strid);
	    System.out.println(id);

	    CategoryImpl categoryImpl=new CategoryImpl();
		int num=categoryImpl.delete(id);
		System.out.println(num);
	    
      	request.setAttribute("num",num);
      	RequestDispatcher   rd=request.getRequestDispatcher("./product/ProductDeleteTest.jsp");
      	rd.forward(request, response);
	}

	public void init() throws ServletException {
	}

}
