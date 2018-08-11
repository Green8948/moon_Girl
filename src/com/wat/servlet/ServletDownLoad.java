package com.wat.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspFactory;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;

import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

public class ServletDownLoad extends HttpServlet {
	public ServletDownLoad() {
	}
	public void destroy() {
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		     String fileName=request.getParameter("fileName");
		     System.out.println("fileName="+fileName);
		     
		     response.setContentType("application/x-download");
		     response.setHeader("Content-Disposition","attachment;fileName=" + fileName);
		     
		     
		     //创建SmartUpload对象
		     SmartUpload   su=new  SmartUpload();
	         
		     
		     //获取pageContext对象
		     JspFactory     jf=JspFactory.getDefaultFactory();   //获取JspFactory对象
		     PageContext  pageContext=jf.getPageContext(this, request, response, "",true,8192,true);
			    
		     //实现 initialize()方法，需要pageContext对象
		     su.initialize(pageContext);
		     
		     //设置文件下载格式
		     su.setContentDisposition(null);
		     try {
		    	 //下载哪个目录里面的文件
				//su.downloadFile("F:\\615班\\中级\\workspace\\Test16FileUploadDownload\\WebRoot\\upload\\"+fileName);
				/*su.downloadFile("F:\\615班\\中级\\workspace\\Test16FileUploadDownload\\WebRoot\\upload\\"+fileName,"text/html;charset=gbk",fileName);*/
				su.downloadFile("D:\\Workspaces\\MyEclipse Professional 2014\\moon_Girl\\WebRoot\\images\\"+fileName,"text/html;charset=gbk",fileName);
		     } catch (SmartUploadException e) {
				e.printStackTrace();
			}
		     //清空
		    JspWriter   jw=pageContext.getOut();
		    jw.clearBuffer();
	}
	
	public void init() throws ServletException {
	}
}
