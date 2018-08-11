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

public class ProductServletBrowse extends HttpServlet {

	public ProductServletBrowse() {
		     super();
	}
	public void destroy() {
    }

    protected void service(HttpServletRequest request, HttpServletResponse response)
    		throws ServletException, IOException {
            doPost(request,response);
    }
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			 
			 //��ѯ��ҳ,��ҳ���ȡҳ��
		   	 int  page=1;
			 String    strpage=request.getParameter("page");
			 System.out.println(strpage+"======");
			 
			 if(strpage!=null){
				   int   inpage=Integer.parseInt(strpage);//���ַ������ֱ��int������
				   page=inpage;
				   if( page<1){                 //��һҳ����С��1
					     page=1;
				   }
				   if( page>getTotalPage()){    //��һҳ���ܴ�������ҳ��
					     page=getTotalPage();
				   }
			 }
			 ProductDao productDao=new ProductDao();
			 List<Product> list=productDao.findProductByPage(page);			 
			 System.out.println(list.size());
		  	 request.setAttribute("ltt", list);
		  	 //���ڼ�ҳ�����ܹ���ҳ��
		  	 request.setAttribute("page", page);
		  	 request.setAttribute("totalPage",getTotalPage());
			 RequestDispatcher   rd=request.getRequestDispatcher("./product/productBrowse.jsp");
			 rd.forward(request, response);
	}
    public   int     getTotalPage(){                           //���ܹ���ҳ��
			 ProductDao productDao=new ProductDao();
	       	 List<Product>   listAll=productDao.findProductAll();
	       	 int    row=listAll.size();  //��ȡ���е�����   11
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
