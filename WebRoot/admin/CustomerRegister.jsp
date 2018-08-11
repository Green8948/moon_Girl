<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'CustomerRegister.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
body{
       /* background-repeat: no-repeat; */
         background-color: pink; 
        /*  background-image: url( ./images/scene.gif); 
         background-image: url( bg_03.gif);  */
       /* bgcolor="rgb(201,141,31)"; */
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
}#myid4{
	position: absolute;
	left: 300px;
	top:150px;
	width="880";
	height="500";
	background-image: url(./images/5.gif);
	background-repeat: no-repeat;
}#myid5{
    position: absolute;
	left:150px; 
	top: 370px;
	width="880";
	height="500";
/* 	background-image: url(6.gif); */
	background-repeat: no-repeat;
}#myid6{
    position: absolute;
	left:150px; 
	top: 500px;
	width="880";
/* 	background-image: url(6.gif); */
	background-repeat: no-repeat;
}#myid7{
    position: absolute;
	left:260px; 
	top: 530px;
	width="880";
	
/* 	background-image: url(6.gif); */
	background-repeat: no-repeat;
}
#nice{
    position: absolute;
	left:100px; 
	top: 340px;
}
#id4 {
	position: absolute;
	left: 300px;
	top: 200px;
	z-index: 1;
	
}

</style>
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
  <div >
		<form action="CustomerServletRegister" method="post" name="myform1">
		   <table  height="5">
       				<tr>
       				      <td width="555"></td>
       				      <td valign="bottom" height="5"><img alt="" src="./images/index_03.gif"> 
       				          <u>我的购物车|</u>
       				       </td>
       				      <td valign="bottom"> <u>我的订单</u> </td>
       				      <td valign="bottom">欢迎</td>
       				      <td valign="bottom"><%=request.getSession().getAttribute("zhanghao")%>!</td>
       				      <td><button><img src="./images/ht_02_02.gif" /></button></td>
       				</tr>
       		</table>
			<table border="0" width="500" id="myid1">
				<tr height="30">
					<td  width="300" valign="bottom">
					    <input type="text" size="35" align="right"> 
					    <button href="https://hao.360.cn/?src=lm&ls=n3b2c32a798" >搜索</button>
					</td>
					<td align="left"  valign="top"  >
					    <a href="https://hao.360.cn/?src=lm&ls=n3b2c32a798" >高级搜索</a>
					</td>
				</tr>
				<tr>
				    <td valign="bottom">热搜商品：
				          <a href="https://hao.360.cn/?src=lm&ls=n3b2c32a798">软件</a>
				    </td>
					<td align="left" valign="top">
					      <a href="https://hao.360.cn/?src=lm&ls=n3b2c32a798">使用帮助</a>
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
	 				<td width="80" > <a href="./admin/Shopping.jsp">首页</a></td>
	 				<td width="80" >新品上市</td>
	 				<td width="80" >热销商品</td>
	 				<td width="80" >推荐商品</td>
	 				<td width="80" >人气商品</td>
	 				<td width="200" ></td>
	 		        <td width="200"  ></td>
	 			</tr>
	 	</table>
	 	 
         <table border="1" height="400" id="id4" background="./images/12.png">
       			<tr>
       			     <td colspan="2" height="80"><img alt="" src="./images/register.bmp" width="400"height="80"></td>
       			    
       			</tr>
       			<tr>
       			      <td align="right"width="100">用户名：
       			      </td>
       			      <td><input type="text" name="zhanghao"></td>
       			</tr>
                <tr>
       			      <td align="right"width="100" >密&nbsp;码：</td>
       			      <td><input type="password" name="password"></td>
       			</tr>
       			<tr>
       			      <td align="right"width="100">确认密码：</td>
       			      <td><input type="password" name="password1"></td>
       			</tr>
       			<tr>
       			     <td align="right"width="100">邮箱地址：</td>
       			      <td><input type="text"></td>
       			</tr>
       			<tr>
       			     <td align="right"width="100">住&nbsp;址：</td>
       			      <td><input type="text"></td>
       			</tr>
       			<tr>
       			     <td align="right"width="100">手&nbsp;机：</td>
       			      <td><input type="text" name="id"></td>
       			</tr>
       			<tr> 
       			     <td>
       			             
       			     </td>
       			     <td >
       			     		 <input type="image" src="./images/dl_08.gif" onclick="return  panduan()">
       			             <button><img src="./images/dl_08.gif" /></button>
       			     </td>
       			 </tr>
       			<tr>
       			     <td></td>
       			      <td></td>
       			</tr>
         </table>
	 
	 </form>
  
   </div>
 </body>
</html>
