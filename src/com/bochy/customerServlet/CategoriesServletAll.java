package com.bochy.customerServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bochy.dao.ProductDao;
import com.bochy.dao.impl.CategoryImpl;
import com.bochy.entity.Category;
import com.bochy.entity.Product;

public class CategoriesServletAll extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public CategoriesServletAll() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */

	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		doPost(req, resp);
	}


	   public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
    
				 
				 //查询分页,从页面获取页数
			   	 int  page=1;
				 String    strpage=request.getParameter("page");
				 System.out.println(strpage+"======");
				 
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
				 
			
				CategoryImpl categoryImpl=new CategoryImpl();
				List<Category> list=categoryImpl.searchCategoryByPage(page);
				System.out.println(list.size()+"  "+"rows");
			 
				
			  	 request.setAttribute("list", list);
			  	 //传第几页还有总共的页数
			  	 request.setAttribute("page", page);
			  	 request.setAttribute("totalPage",getTotalPage());
				 RequestDispatcher   rd=request.getRequestDispatcher("./order/AllCategories.jsp");
				 rd.forward(request, response);
				
				   }
		public   int     getTotalPage(){                           //求总共的页数
			
			CategoryImpl categoryImpl=new CategoryImpl();
			List<Category> list=categoryImpl.searchCategoryAll();
			System.out.println(list.size()+"  "+"rows");
		
	      	 int    row=list.size();  //获取所有的行数   11
	      	 int    totalPage=0;
	      	 if(row%5==0){
	      		    totalPage=row/5;
	      	 }else{
	      		    totalPage=row/5+1;
	      	 }
	      	 return  totalPage;
	     }

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
