<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyShoppingCart.jsp' starting page</title>
    
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
}#myid4{
	position: absolute;
	left: 300px;
	top:145px;
	z-index: 2;
	background-repeat: no-repeat; 
}  #myid5{
	position: absolute;
	left: 100px;
	top:200px;
	z-index: 2;
	background-repeat: no-repeat; 
}        
     
  #shop5{
   position: absolute;
	left: 123px;
	top: 140px; 
  
  }
  </style>
  </head>
  
  <body>
      <img src="./images/order.bmp" width="783px" height="475px" id="shop5"  />
		  <form action="CustomerServletRegister" method="post" name="myform1">
		   <table  height="5">
       				<tr>
       				      <td width="555"></td>
       				      <td valign="bottom" height="5"><img alt="" src="./images/index_03.gif"> 
       				          <u>我的购物车|</u>
       				       </td>
       				      <td valign="bottom"> <a   href="OrderServletOne?id=1"> 我的订单</a> </td>
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
	 				<td width="80" ><a href="./admin/Shopping.jsp">首页</a></td>
	 				<td width="80" >
	 				     <a  href="./good/GoodBrowse.jsp ">新品上市</a> 
	 				</td>
	 				<td width="80" ><a  href="./good/GoodBrowse.jsp ">热销商品</a> </td>
	 				<td width="80" ><a  href="./good/GoodBrowse.jsp ">推荐商品</a></td>
	 				<td width="80" ><a  href="./good/GoodBrowse.jsp ">人气商品</a></td>
	 				<td width="200" ></td>
	 		        <td width="200"  ></td>
	 			</tr>
	 	</table>
	 	<table  id="myid4" border="0"  >
	 			<tr >
	 			        <td></td>
						<td  colspan="5" height="35"  valign="top">
						     <h3>我的购物车</h3> 
						</td>
				</tr>
				
				<tr >
						<td width="300" colspan="5"></td>
						<td>Total Money</td>
				</tr>
	 			
	 			<tr background="./images/12.png">
	 				
	 				<td width="80" >商品名称</td>
	 				<td width="100" align="right" >市场价</td>
	 				<td width="80" align="right" >价格</td>
	 				<td width="80" align="right">数量</td>
	 				<td width="80" align="right">删除</td>
	 		        <td width="120"  ></td>
	 			</tr>
	 			
	 			 <tr background="./images/4.gif" >
						      <td  colspan="" height="90">
						                 九阳豆浆机
						      </td>
						      <td align="center"><del>¥135.0</del></td>
						      <td align="center">¥119.0<br>
						        save:16.0
						      </td>
						      <td align="center">1</td>
						      <td align="center">
								      <a href="./good/MyShoppingCart.jsp ">
								          <img alt="" src="./images/del.png">
								      </a>
						      </td>
						      
				 </tr>
				<tr >
						<td></td>
						<td width="30" >
						      <a  href="./good/MyShoppingCart.jsp ">
				                      		
				                      		<img alt="" src="./images/clear.gif">
				              </a>
				         </td> 
				         <td colspan="2" align="center"> 
				              <a  href="./good/GoodBrowse.jsp ">
				                      		
				                      		<img alt="" src="./images/continue.gif">
				              </a>
				         </td>
				         
				        
				         <td>
				               <a  href="./good/CustomerOrder.jsp ">
				                      		
				                      		<img alt="" src="./images/check.gif">
				               </a>
				                      
						
						</td>
				</tr>
				
			
	 	</table>
	 	<table id="myid5" >
	 	       <tr>
	 	            <td>
	 	           
		 	                <ul type="disc">
				 	                      <li >  
				 	                      
						 	                        <a  href="./good/MyShoppingCart.jsp ">
								                      	    我的购物车
								                    </a>
				 	                     </li>
		 	                </ul>
	 	             </td>
	 	       </tr>
	 	    <tr>
	 	            <td>
	 	           
		 	                <ul type="disc">
				 	                      <li >  
				 	                      
						 	                        <a  href="./good/CustomerOrder.jsp">
								                      	    我的订单
								                    </a>
				 	                     </li>
		 	                </ul>
	 	             </td>
	 	       </tr>
	 	       
	 	</table>
	 	
       	</form>	
  </body>
</html>
