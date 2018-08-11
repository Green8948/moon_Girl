<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'CustomerLogin.jsp' starting page</title>
    
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
	top: 19px;
	z-index: 2;
	
}

#myid2 {
	position: absolute;
	left: 100px;
	top: 0px;
	z-index: 1;
	background-image: url(./images/9.bmp);
	background-repeat: no-repeat;
}
#myid3{
	position: absolute;
	left: 100px;
	top:80px;
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
</style>
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
								document.getElementById("myHeader1").innerHTML="Nice day!";
								}             

</script>

</head>

<body>
	<div >
		<form action="CustomerLogin" method="post" name="myform1">
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
	 				<td width="80" ><a href="./admin/Shopping.jsp">首页</a></td>
	 				<td width="80" >新品上市</td>
	 				<td width="80" >热销商品</td>
	 				<td width="80" >推荐商品</td>
	 				<td width="80" >人气商品</td>
	 				<td width="200" ></td>
	 		        <td width="200"  ></td>
	 			</tr>
	 	</table>
	 	<table  id="myid4"   background="./images/6.gif" height="300" width="500">
	 			<tr  height="70">
	 	   		     <td> </td>
	 	   		     <td> </td>
	 	   		</tr>
	 	   		<tr height="10">
	 	   			 <td width="69"> </td>
	 	   		     <td> 会员名：<input type="text"   align="right" name="zhanghao"></td>
	 	   		    
	 	   		</tr>
	 	   		<tr height="10" >
	 	   		     <td>  </td>
	 	   		     <td>  密&nbsp;码 ：&nbsp;
	 	   		     <input type="text"   align="middle" name="password">  </td>
	 	   		     
	 	   		</tr>
	 	   		<tr>
	 	   		     <td > </td>
	 	   		     <td><input  type="submit" value="登录"   onclick="return  panduan()">
	 	   		         <a href="./admin/CustomerRegister.jsp">WELL</a>
	 	   		        <!--  <button onclick="change_header1()">WELL</button> -->
	 	   		      </td>
	 	   		</tr>
	 	   		<tr  height="200">
	 	   		     <td> </td>
	 	   		     <td> </td>
	 	   		</tr>
	 	</table>	
	 	<h3 id="nice">
	 			<img alt="" src="./images/12.png" width="850" height="10" align="bottom"> 
	 	</h3>
		   <table   width="700" height="100" id="myid5">
	     
	            <tr>
	            	<td>我的账户</td>
	            	<td>付款方式</td>
	            	<td>派送方式</td>
	            	<td>帮助中心</td>
	             </tr><tr>
	            	<td>取消订单</td>
	            	<td>银行汇款</td>
	            	<td>省内外快递邮寄</td>
	            	<td>购物流程</td>
	             </tr><tr>
	            	<td>订单状态查询</td>
	            	<td>邮局邮递</td>
	            	<td>自行取货</td>
	            	<td></td>
	             </tr><tr>
	            	<td></td>
	            	<td >工行在线支付</td>
	            	<td>本市送货上门</td>
	            	<td></td>
	             </tr>
	             <tr>
	                <td></td>
	                <td>支付宝</td>
	                <td></td>
	                 <td></td> 
	             </tr>
	     </table>
	     <table id="myid6"  >
	     		<tr align="left">
	     		    <td width="80"></td>
	     			<td >明日图书|</td>
	     			<td>编程词典|</td>
	     			<td>网络学院|</td>
	     			<td>编程资源|</td>
	     			<td>技术论坛|</td>
	     			<td>帮助指南|</td>
	     		</tr>
	      </table>
	      <table id="myid7"  >
	     		<tr align="right"  >
					<td></td>
					<td></td>
					<td align="left">Copyright</td>
					<td align="center" background="./images/12.png">
					    &nbsp;&nbsp;&nbsp;科技计有限公司&nbsp;&nbsp;&nbsp;
					</td>
					<td align="right">All Rights Reserved</td>	
					<td></td>	
					<td></td>     		
	     		</tr>
	     </table>
		</form>
	</div>
</body>
</html>
