<%@ page language="java" import="java.util.*" pageEncoding="gbk" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
  body {      
      background-color: pink; 
	 }
#myid1 {
	position: absolute;
	left: 400px; 
	top: 59px;
	z-index: 2;
	
}

#myid2 {
	position: absolute;
	left: 100px;
	top: 40px;
	z-index: 1;
	background-image: url(./images/9.bmp);
	background-repeat: no-repeat;
}
#myid3{
	position: absolute;
	left: 100px;
	top:120px;
	z-index: 2;
	background-repeat: no-repeat; 
}#m{
    position: absolute;
	left: 170px;
	top: 210px; 
	z-index: 2;
    background-attachment:fixed;
     background-color: pink;
}      
  #shop5{
   position: absolute;
	left: 130px;
	top: 60px; 
  
  }     
  #images{
   position: absolute;
	left: 345px;
	top: 245px; 
  
  }
  </style>
   
  </head>
  
  <body>

           <img src="./images/shop.bmp" width="783px" height="575px" id="shop5"  />
		    <table id="m" border="1" width="121" bgcolor="yellow">
		          
				         <tr height="42">
				                <td  >
				                      <a  href="./admin/CustomerLogin.jsp ">
				                      		
				                      		<img alt="" src="./images/M.png">
				                      </a>
				                 </td>
				         </tr>
				         <tr>
				             <td></td>
				         </tr>
				         <tr height="42">
				             <td  >
				                       <a  href="./admin/CustomerRegister.jsp ">
				                            <img alt="" src="./images/W.png">
				                       </a>
			                     </td>
				          </tr>
				         <tr>
				              <td></td>
				         </tr>
				         <tr height="42">
				        
		                <td  >
		                			  <a  href="./product/Login.jsp ">
				                      <img alt="" src="./images/Well.png">
		                      </a>
		                </td>
		         </tr>
		         
		   </table>
		  
   
         
         <form action="CustomerServletRegister" method="post" name="myform1">
		   <table  height="5">
       				<tr>
       				      <td width="555"></td>
       				      <td valign="bottom" height="5"><img alt="" src="./images/index_03.gif"> 
       				          <u>�ҵĹ��ﳵ|</u>
       				       </td>
       				      <td valign="bottom"> <u>�ҵĶ���</u> </td>
       				      <td valign="bottom">��ӭ</td>
       				      <td valign="bottom"><%=request.getSession().getAttribute("zhanghao")%>!</td>
       				      <td><button><img src="./images/ht_02_02.gif" /></button></td>
       				</tr>
       		</table>
       		
       		<table border="0" width="500" id="myid1">
				<tr height="30">
					<td  width="300" valign="bottom">
					    <input type="text" size="35" align="right"> 
					    <button href="https://hao.360.cn/?src=lm&ls=n3b2c32a798" >����</button>
					</td>
					<td align="left"  valign="top"  >
					    <a href="https://hao.360.cn/?src=lm&ls=n3b2c32a798" >�߼�����</a>
					</td>
				</tr>
				<tr>
				    <td valign="bottom">������Ʒ��
				          <a href="https://hao.360.cn/?src=lm&ls=n3b2c32a798">���</a>
				    </td>
					<td align="left" valign="top">
					      <a href="https://hao.360.cn/?src=lm&ls=n3b2c32a798">ʹ�ð���</a>
					</td>

				</tr>
			</table>
		   
		    <table width="830" height="110"  id="myid2">
					<tr >
						<td width="300"></td>
					</tr>
			</table>
		<table  id="myid3" background="./images/12.png">
	 			<tr>
	 				<td width="80" ><a href="./admin/Shopping.jsp">��ҳ</a></td>
	 				<td width="80" >��Ʒ����</td>
	 				<td width="80" >������Ʒ</td>
	 				<td width="80" >�Ƽ���Ʒ</td>
	 				<td width="80" >������Ʒ</td>
	 				<td width="200" ></td>
	 		        <td width="200"  ></td>
	 			</tr>
	 	</table>
       	</form>	
		      <form action="servletFileUpLoad"  method="post"    enctype="multipart/form-data">
		          <table   id="images" background="../images/12.png">
		                 <tr>
		                         <td>
		                                Love:
		                         </td>
		                         <td>
		                                 <input  type="text"    name="zhanghao"><br>
		                         </td>
		                 
		                 </tr>
		                 <tr>
		                         <td>
		                                Love:
		                         </td>
		                         <td>
		                                <input  type="file"    name="myfile"><br>
		                         </td>
		                 
		                 </tr>
		                 <tr>
		                         <td>
		                              <input  type="submit"    value="�ύ"> 
	                             </td>
		                         <td>
		                               <input  type="reset"    name="����">
		                         </td>
		                 
		                 </tr>
		          
		          </table>           
		     </form>
  </body>
</html>
