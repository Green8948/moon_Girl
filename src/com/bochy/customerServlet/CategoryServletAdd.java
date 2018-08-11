package com.bochy.customerServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bochy.dao.impl.CategoryImpl;
import com.bochy.entity.Category;

public class CategoryServletAdd extends HttpServlet {

	public CategoryServletAdd() {
	
	}

	public void destroy() {

	}
    
    protected void service(HttpServletRequest req, HttpServletResponse resp)
    		throws ServletException, IOException {
    	   doPost(req, resp);
    }
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		    request.setCharacterEncoding("utf-8");
		    String   name=request.getParameter("name");
		    String level= request.getParameter("level");
		    String  pid= request.getParameter("pid");
		    int   level1=Integer.parseInt(level);
		    int  pid1=Integer.parseInt(pid);
		    Category category=new Category();
			category.setName(name);
			category.setLevel(level1);
			category.setPid(pid1);
			CategoryImpl categoryImpl=new CategoryImpl();
			int num=categoryImpl.add(category);
			System.out.println("num==="+num);
		    
		 request.setAttribute("num",num);
      	  RequestDispatcher   rd=request.getRequestDispatcher("./product/productAddTest.jsp");
      	  rd.forward(request, response);
		    
	}

	
	public void init() throws ServletException {
	
	}

}
