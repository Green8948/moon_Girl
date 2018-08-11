package com.wat.servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspFactory;
import javax.servlet.jsp.PageContext;
import com.bochy.dao.ImageDAO;
import com.bochy.entity.Image;
import com.jspsmart.upload.File;
import com.jspsmart.upload.Files;
import com.jspsmart.upload.Request;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;
public class ServletFileUpLoad extends HttpServlet {
	public ServletFileUpLoad() {
	}
	public void destroy() {
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		    response.setCharacterEncoding("GBK");
		    request.setCharacterEncoding("GBK");
		    
		    //该账号就是空的，因为不能这么获取数据
		    String  zhanghao=request.getParameter("zhanghao");
		    System.out.println("zhanghao="+zhanghao);
		    
		    //SmartUpload 类用于实现文件的上传与下载操作
		    SmartUpload    su=new   SmartUpload();
		    
		    //获取pageContext对象
		    JspFactory     jf=JspFactory.getDefaultFactory();   //获取JspFactory对象
		    PageContext  pageContext=jf.getPageContext(this, request, response, "",true,8192,true);
		    
		    //实现 initialize()方法，需要pageContext对象
		    su.initialize(pageContext);
		    
		    try {
		    	//读取文件数据
				su.upload();                    //upload()方法用来完成一些准备操作
				
				//保存文件到指定的目录
				/*su.save("F:\\615班\\中级\\workspace\\Test16FileUploadDownload\\WebRoot\\upload");*/
			    su.save("D:\\Workspaces\\MyEclipse Professional 2014\\moon_Girl\\WebRoot\\images");
			    
		    } catch (SmartUploadException e) {
				e.printStackTrace();
			}
		    
            //获取文件名		    
		    Files     files=su.getFiles();  //获取全部的上传文件
		    File      fe=files.getFile(0);  //获取第一张图片   //不是以前的file，com.jspsmart.upload.File;
		    String   fileName=fe.getFileName(); //获取文件名,不要获取字段名   fieldName
		    System.out.println("fileName="+fileName);
		    
		    //获取账号,加了文件，获取数据的时候都得用request1
		    Request    request1=su.getRequest();
		    String     zhanghao1=request1.getParameter("zhanghao");
		    System.out.println("zhanghao1="+zhanghao1);
		    
		    //保存到数据库
		    Image   image=new  Image();
		    image.setZhanghao(zhanghao1);
		    image.setFileName(fileName);
		    
		    ImageDAO   imageDAO=new  ImageDAO();
		    int  num=imageDAO.add(image);
		    System.out.println("num==="+num);
		    if(num>0){
		    	   System.out.println("添加成功");
		    	   //转向图片浏览里面
		    	   List<Image>   list=imageDAO.findAll();
		    	   request.setAttribute("list",list);
		    	   RequestDispatcher   rd=request.getRequestDispatcher("imageBrowse.jsp");
		    	   rd.forward(request, response);
		    }else{
		    	   System.out.println("添加失败！");
		    }
	}
	public void init() throws ServletException {
	}
}
