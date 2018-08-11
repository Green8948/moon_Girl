<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <script type="text/javascript">
		 function   panduan(){
	                       var   zhanghao=document.myform1.zhanghao.value;
	                       var   password=document.myform1.password.value;
	                       var   password1=document.myform1.password1.value;
	                       if(""==zhanghao||""==password){
	                                alert("账号或者密码不能为空！");
	                               /*  return  false; */
	                       }if(password1!=password){
	                                alert("密码输入错误");
	                                return  false;
	                       }
	                       
	               }
</script>
  </head>
  
  <body>
     <a  href="ProductServletBrowse?page=1">商品浏览</a><br>
     
      <a id="CustomerLogin" href="./admin/CustomerLogin.jsp ">W</a>
      
     <input type="image" src="./images/dl_08.gif" onclick="return  panduan()">
      
     <table >
          <tr><td background=""></td></tr>
          <tr><td></td></tr>
          <tr><td></td></tr>
     </table>
      
     
  </body>
</html>
