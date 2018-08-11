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
		    
		    //���˺ž��ǿյģ���Ϊ������ô��ȡ����
		    String  zhanghao=request.getParameter("zhanghao");
		    System.out.println("zhanghao="+zhanghao);
		    
		    //SmartUpload ������ʵ���ļ����ϴ������ز���
		    SmartUpload    su=new   SmartUpload();
		    
		    //��ȡpageContext����
		    JspFactory     jf=JspFactory.getDefaultFactory();   //��ȡJspFactory����
		    PageContext  pageContext=jf.getPageContext(this, request, response, "",true,8192,true);
		    
		    //ʵ�� initialize()��������ҪpageContext����
		    su.initialize(pageContext);
		    
		    try {
		    	//��ȡ�ļ�����
				su.upload();                    //upload()�����������һЩ׼������
				
				//�����ļ���ָ����Ŀ¼
				/*su.save("F:\\615��\\�м�\\workspace\\Test16FileUploadDownload\\WebRoot\\upload");*/
			    su.save("D:\\Workspaces\\MyEclipse Professional 2014\\moon_Girl\\WebRoot\\images");
			    
		    } catch (SmartUploadException e) {
				e.printStackTrace();
			}
		    
            //��ȡ�ļ���		    
		    Files     files=su.getFiles();  //��ȡȫ�����ϴ��ļ�
		    File      fe=files.getFile(0);  //��ȡ��һ��ͼƬ   //������ǰ��file��com.jspsmart.upload.File;
		    String   fileName=fe.getFileName(); //��ȡ�ļ���,��Ҫ��ȡ�ֶ���   fieldName
		    System.out.println("fileName="+fileName);
		    
		    //��ȡ�˺�,�����ļ�����ȡ���ݵ�ʱ�򶼵���request1
		    Request    request1=su.getRequest();
		    String     zhanghao1=request1.getParameter("zhanghao");
		    System.out.println("zhanghao1="+zhanghao1);
		    
		    //���浽���ݿ�
		    Image   image=new  Image();
		    image.setZhanghao(zhanghao1);
		    image.setFileName(fileName);
		    
		    ImageDAO   imageDAO=new  ImageDAO();
		    int  num=imageDAO.add(image);
		    System.out.println("num==="+num);
		    if(num>0){
		    	   System.out.println("��ӳɹ�");
		    	   //ת��ͼƬ�������
		    	   List<Image>   list=imageDAO.findAll();
		    	   request.setAttribute("list",list);
		    	   RequestDispatcher   rd=request.getRequestDispatcher("imageBrowse.jsp");
		    	   rd.forward(request, response);
		    }else{
		    	   System.out.println("���ʧ�ܣ�");
		    }
	}
	public void init() throws ServletException {
	}
}
