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

public class ProductServletFind extends HttpServlet {
	public ProductServletFind() {
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
	    int      id=Integer.parseInt(strid);
	    
	    ProductDao productDao=new ProductDao();
	    List<Product> list=productDao.findProductById(id);
	    System.out.println(list.size()+"   "+"rows");
	  
   	    request.setAttribute("ltt", list);
	    RequestDispatcher   rd=request.getRequestDispatcher("./product/SearchProduct.jsp");
	    rd.forward(request, response); 
		
		
		
		
	}

	public void init() throws ServletException {
	}

}
