package com.bochy.customerServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bochy.dao.OrderDao;

import com.bochy.dao.impl.OrderImpl;
import com.bochy.entity.Order;


public class OrdersServletAll extends HttpServlet {

	public OrdersServletAll() {
	}

	public void destroy() {
	}
 
	 protected void service(HttpServletRequest request, HttpServletResponse response)
	    		throws ServletException, IOException {
	            doPost(request,response);
	    }
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 //查询分页,从页面获取页数
	   	 int  page=1;
		 String    strpage=request.getParameter("page");
		 
		 System.out.println(strpage+"===================");
		 
		 if(strpage!=null){
			   int   inpage=Integer.parseInt(strpage);//把字符串数字变成int型数字
			   page=inpage;
			   if( page<1){                 //上一页不能小于1
				     page=1;
			   }
			   if( page>getTotalPage()){    //下一页不能大于最大的页数
				     page=getTotalPage();
			   }
		 }
		 
		    System.out.println(page);
			
			OrderImpl OrderImpl=new OrderImpl();
			List<Order> list=OrderImpl.searchOrderByPage(page);
	    	System.out.println(list.size()+"  "+"row");
	    	
	    	request.setAttribute("list", list);
		  	 //传第几页还有总共的页数
		  	 request.setAttribute("page", page);
		  	 request.setAttribute("totalPage",getTotalPage());
			 RequestDispatcher   rd=request.getRequestDispatcher("./order/AllMyOrders.jsp");
			 rd.forward(request, response);
		 
	  }
	  public   int     getTotalPage(){                           //求总共的页数
			
		    OrderImpl OrderImpl=new OrderImpl();
			List<Order> listAll=OrderImpl.searchOrderAll();
		
		     
	       	 int    row=listAll.size();  //获取所有的行数   11
	       	 int    totalPage=0;
	       	 if(row%5==0){
	       		    totalPage=row/5;
	       	 }else{
	       		    totalPage=row/5+1;
	       	 }
	       	 return  totalPage;
     }
	public void init() throws ServletException {

	}

}
