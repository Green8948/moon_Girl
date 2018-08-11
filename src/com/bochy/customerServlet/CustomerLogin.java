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

import com.bochy.dao.impl.CustomerImpl;
import com.bochy.entity.Admin;
import com.bochy.entity.Customer;


public class CustomerLogin extends HttpServlet {

	public CustomerLogin() {
		super();
	}
    protected void service(HttpServletRequest request, HttpServletResponse response)
	    		throws ServletException, IOException {
	            doPost(request,response);
	    }
	public void destroy() {

	}
    public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
    	    request.setCharacterEncoding("utf-8");
		    String   zhanghao=request.getParameter("zhanghao");
		    String   password=request.getParameter("password");
		    System.err.println(zhanghao);
		    System.out.println(password);
			CustomerImpl customerImpl=new CustomerImpl();
			List<Customer> list=customerImpl.searchCustomerAll();
			System.out.println(list.size()+" === "+"rows");
			Iterator<Customer>  it=list.iterator();
			
		       int a=0;
	           while(it.hasNext()){
	              Customer customer=it.next();
	              System.out.println(customer.getName()+"============name");
	              System.out.println(customer.getPassword()+"============pas");
	           if(customer.getName().equals(zhanghao)&&customer.getPassword().equals(password)){
	        	   a++;
	               }		 
	           }
		          
		           
		           System.out.println("a_cus="+a);
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
		 			   RequestDispatcher   rd=request.getRequestDispatcher("./admin/CustomerLogin.jsp");
		            	 rd.forward(request,response); 
		 			 
		 			  /*response.sendRedirect("./product/Login.jsp"); */
		 		   }
	}
    	
    	
    
	public void init() throws ServletException {
	
	}

}
