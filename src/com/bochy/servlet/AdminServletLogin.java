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

import com.bochy.dao.impl.AdminImpl;
import com.bochy.entity.Admin;

public class AdminServletLogin extends HttpServlet {

	public AdminServletLogin() {
	
	}
    protected void service(HttpServletRequest request, HttpServletResponse response)
    		throws ServletException, IOException {
            doPost(request,response);
    }
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		     request.setCharacterEncoding("utf-8");
		    String   zhanghao=request.getParameter("zhanghao");
		    String   password=request.getParameter("password");
		    
			AdminImpl adminImpl=new AdminImpl();
			List<Admin> list=adminImpl.searchAdminAll();
			System.out.println(list.size()+"  "+"rows");
			Iterator<Admin>  it=list.iterator();
			
			       int a=0;
		           while(it.hasNext()){
		              Admin admin=it.next();
		           if(admin.getUsername().equals(zhanghao)&&admin.getPassword().equals(password)){
		        	   a++;
		               }		 
		           }
		           
		     System.err.println("a==="+a);      
		           if(a==1){
		 			  request.setAttribute("num", a);
		 			  request.getSession().setAttribute("zhanghao", zhanghao);
		 			  RequestDispatcher   rd=request.getRequestDispatcher("./product/ProductAdd.jsp");
		            	 rd.forward(request,response);  
		            	
		 			   }
		 		   else{
		 			   System.out.println("账号密码错误。");
		 			   request.setAttribute("zhanghao", zhanghao);  //利用request对象设置属性和属性值
		               request.setAttribute("password", password);
		 			   RequestDispatcher   rd=request.getRequestDispatcher("./product/Login.jsp");
		            	 rd.forward(request,response); 
		 			 
		 			  /*response.sendRedirect("./product/Login.jsp"); */
		 		   }
	}

	public void init() throws ServletException {
	}
	public void destroy() {
	}
}
