package com.bochy.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bochy.dao.ProductDao;
import com.bochy.entity.Product;

public class ProductServletUpdate extends HttpServlet {
	public ProductServletUpdate() {
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
		    int         id=Integer.parseInt(strid);
		    
		    ProductDao productDao=new ProductDao();
		    List<Product> list=productDao.findProductById(id);
		   
            Iterator<Product> it=list.iterator();
            while(it.hasNext()){
                   Product    product=it.next();
         System.out.println(product.getBaseprice()+product.getMarketprice()+product.getSellprice()+product.getName());
            }
		    request.setAttribute("ltt", list);
		    
		    RequestDispatcher    rd=request.getRequestDispatcher("./product/ProductUpdate.jsp");
		    rd.forward(request, response);

	
	
	}

	public void init() throws ServletException {
	}

}
