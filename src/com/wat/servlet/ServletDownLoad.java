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
		     
		     
		     //����SmartUpload����
		     SmartUpload   su=new  SmartUpload();
	         
		     
		     //��ȡpageContext����
		     JspFactory     jf=JspFactory.getDefaultFactory();   //��ȡJspFactory����
		     PageContext  pageContext=jf.getPageContext(this, request, response, "",true,8192,true);
			    
		     //ʵ�� initialize()��������ҪpageContext����
		     su.initialize(pageContext);
		     
		     //�����ļ����ظ�ʽ
		     su.setContentDisposition(null);
		     try {
		    	 //�����ĸ�Ŀ¼������ļ�
				//su.downloadFile("F:\\615��\\�м�\\workspace\\Test16FileUploadDownload\\WebRoot\\upload\\"+fileName);
				/*su.downloadFile("F:\\615��\\�м�\\workspace\\Test16FileUploadDownload\\WebRoot\\upload\\"+fileName,"text/html;charset=gbk",fileName);*/
				su.downloadFile("D:\\Workspaces\\MyEclipse Professional 2014\\moon_Girl\\WebRoot\\images\\"+fileName,"text/html;charset=gbk",fileName);
		     } catch (SmartUploadException e) {
				e.printStackTrace();
			}
		     //���
		    JspWriter   jw=pageContext.getOut();
		    jw.clearBuffer();
	}
	
	public void init() throws ServletException {
	}
}
