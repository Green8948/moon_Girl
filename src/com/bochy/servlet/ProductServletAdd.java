package com.bochy.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bochy.dao.ProductDao;
import com.bochy.entity.Product;

public class ProductServletAdd extends HttpServlet {

	public ProductServletAdd() {
	
 	}
    protected void service(HttpServletRequest request, HttpServletResponse response)
    		throws ServletException, IOException {
	    doPost(request, response);
    }
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 String  name=request.getParameter("name") ;
	     String  categoryid=request.getParameter("categoryid") ;
		 String  baseprice=request.getParameter("baseprice");
		 String  marketprice=request.getParameter("marketprice") ;
		 String  sellprice=request.getParameter("sellprice");
		 String  comment=request.getParameter("comment") ;
	     String  sexrequest=request.getParameter("sexrequest");
		 String  filename=request.getParameter("filename");
		 String  description=request.getParameter("description");
		
		 String name1=new String(name.getBytes("ISO8859-1"),"UTF-8");
		 String categoryid1=new String(categoryid.getBytes("ISO8859-1"),"UTF-8");
		 String baseprice1=new String(baseprice.getBytes("ISO8859-1"),"UTF-8");
		 String marketprice1=new String(marketprice.getBytes("ISO8859-1"),"UTF-8");
		 String sellprice1=new String(sellprice.getBytes("ISO8859-1"),"UTF-8");
		 /*String comment1=new String(comment.getBytes("ISO8859-1"),"UTF-8");*/
		 String sexrequest1=new String(sexrequest.getBytes("ISO8859-1"),"UTF-8");
		 String filename1=new String(filename.getBytes("ISO8859-1"),"UTF-8");
		 String description1=new String(description.getBytes("ISO8859-1"),"UTF-8");
	
		 System.out.println(name1);
		 
		  Product product=new Product();
    	  product.setName(name1);
    	  product.setCategoryid(categoryid1);
    	  product.setBaseprice(baseprice1);
    	  product.setMarketprice(marketprice1);
    	  /*product.setComment("comment1");*/
          product.setFilename(filename1);
          product.setSellprice(sellprice1);
          product.setSexrequest(sexrequest1);
          product.setDescription(description1);
          ProductDao productDao=new ProductDao();
          int num=productDao.add(product);
          System.out.println(num);
          
          
          request.setAttribute("num",num);
      	  RequestDispatcher   rd=request.getRequestDispatcher("./product/productAddTest.jsp");
      	  rd.forward(request, response);
		 
		 
	}

	public void init() throws ServletException {
     }

}
