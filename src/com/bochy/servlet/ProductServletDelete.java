package com.bochy.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bochy.dao.ProductDao;
import com.bochy.entity.Product;

public class ProductServletDelete extends HttpServlet {

	public ProductServletDelete() {

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
	
    	    ProductDao productDao=new ProductDao();
    	    int num=productDao.delete(id);
		    
		    request.setAttribute("num",num);
	      	RequestDispatcher   rd=request.getRequestDispatcher("./product/ProductDeleteTest.jsp");
	      	rd.forward(request, response);   
		   
	}

	public void init() throws ServletException {

	}

}
