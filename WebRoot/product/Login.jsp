<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Login.jsp' starting page</title>
    
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
	                       if(""==zhanghao||""==password){
	                                alert("账号或者密码不能为空！");
	                                return  false;
	                       }
	               }
	              function change_header()
								{
								document.getElementById("myHeader").innerHTML="Nice day!";
								}
	 </script>
<style >
      body{
       /* background-repeat: no-repeat; */
       /*   background-color: pink; 
         background-image: url( ./images/scene.gif); 
 */      /*  background-image: url( bg_03.gif); */
        */
       /* bgcolor="rgb(201,141,31)"; */
      }#myid1{
      position: absolute;
      top:180px;
      left:300px;
      z-index:1; 
      }#myid2{
      position: absolute;
      top:330px;
      left:520px;
      z-index: 2;
      }#myHeader{
      position: absolute;
      top:9px;
      left:720px;
      z-index: 2;
      }
</style>
  </head>
  <body  background="./images/ht_02_14.gif">
        <table  height="1">
       				<tr>
       				      <td width="95"  valign="bottom">
       				      <ul type="circle"><li>
       				         <a href="./admin/Shopping.jsp">首页</a>
       				      </li></ul>   
       				      </td>
       				</tr>    
       	</table>
        
        <table>
	            <tr>
		                 <td><h1 id="myHeader">Hello World!</h1></td>
		                 <td></td>
	             </tr>
         </table>
	<div id="myid1">
           <img   alt="这是图片"   src="./images/bg_03.gif"   width="500" > 
   </div>
   <div id="myid2">
        <form action="AdminServletLogin" method="post" name="myform1">
           
		        <table >
		        
		        <%
                  String      strzhanghao=(String)request.getAttribute("zhanghao");
                  String      strmima=(String)request.getAttribute("password"); 
               %> 
                     <%-- <%=strzhanghao %>     登录成功！ --%>
		        
		        		<tr>
		        		     <td>管理员：</td>
		        		     <td><input type="text" name="zhanghao" size="20"></td>
		        		</tr>
		        		
		        		<tr>
		        		     <td align="center">密码：</td>
		        		     <td><input type="password" name="password" size="20"> </td>
		        		</tr>
		        		
		        		<tr>
		        		     <td colspan="2">
			        		      <input  type="submit" value="登录"   onclick="return  panduan()">
			        		      <button onclick="change_header()">WELCOME</button>
		        		     </td>
		        		    

		        		     
		        		      <!--<button><img src="./images/an_06.gif" /></button> 登录图片 -->
		        		</tr>
		        </table>
		  </form>     
   </div>
 
  </body>
</html>
