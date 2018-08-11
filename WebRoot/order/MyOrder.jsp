<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="com.bochy.entity.Order"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyOrder.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
   		#myid1{
   		position: absolute;
   		left:120px;
   		top: 0px;
   		z-index: 1;
   		}#myid2{
   		position: absolute;
   		left:850px;
   		top: 20px;
   		z-index: 2;
   		}#myid3{
   		position: absolute;
   		left:120px;
   		top: 100px;
   		z-index: 2;
   		}#myid4{
   		position: absolute;
   		left:130px;
   		top: 160px;
   		z-index: 3;
   		}#myid5{
   		position: absolute;
   		left:320px;
   		top: 100px;
   		z-index: 1;
   		}#mydiv{
		    /*   position:absoluate;
		      left:400px; */
		      width: 800px;
		      height: 500px;
		}
       #mytable{
             
              background-color: rgb(106,216,207);
       }
  
  
          
  </style>
        <script type="text/javascript">
             function  searchOrder(id){
                        window.location.href="ProductServletFind?id="+id;
                        return false;
              }
              function   deleteOrder(id){
              				alert("1");
                        window.location.href="ProductServletDelete?id="+id;
                        return false;
              }
              function   updateOrder(id){
                        window.location.href="OrderServletOne?id="+id;
                        return false;
              }
		 </script>
  </head>
  
  <body  background="./images/ht_02_13.gif">
  		<div id="myid1">
           <img   alt="这是图片"   src="./images/9.bmp"   width="1000" height="100" > 
           		
        </div>
        <div id="myid2">  
               <table>
                  <tr>  
           		            <td>您好，<%=request.getSession().getAttribute("zhanghao")%> !</td>
           		            <td><button><img src="./images/ht_02_02.gif" /></button></td>
           		       </tr>
           		</table>
        </div>
  		<div  id="myid3" >
  			<table border="1">
  				<tr>
  				  	<td width="40"height="20"><img alt="" src="./images/ht_02_03.gif"></td>
  				 </tr>
  				<tr>
  				  	<td width="40" height="500" valign="top"><img alt="" src="./images/ht_02_13.gif" height="500"width="190"></td>
  				</tr>
  			</table>
  		</div>
  		<div id="myid4">
  			<table >
  				   <tr>
	  					<td>商品管理</td>
	  				</tr>
	  				<tr>
	  					<td><a   href="./product/ProductAdd.jsp"> 商品添加</a> </td>
	  				</tr>
	  				<tr>	
	  					<td><a  href="ProductServletBrowse">商品浏览</a></td>
	  			    </tr>
	  			    <tr>
	  					<td>类别管理</td>
	  				</tr>
	  				<tr>         
	  					<td><a   href="CategoriesServletAll?page=1"> 查看所有类别</a></td>
	  				</tr>
	  				<tr>
	  					<td><a   href="./order/CategoryAdd.jsp"> 添加类别</a></td>
	  				</tr>
	  				<tr>
	  					<td>订单管理</td>
	  				</tr>
	  				<tr>		
	  					<td><a href="OrdersServletAll?page=1"> 查看订单</a></td>
	  				</tr>
	  				<tr>
		  				<td><a href="OrdersServletAll?id=1"> 订单查询</a></td>
	  			     </tr>
		   
		   
			</table>
  		</div>
  		<div id="myid5">
  		  	<div>
  		  		<img alt="" src="./images/order.gif" width="700"height="30"> 	
  		  	</div>
 
  		  	<div>
  		  		<form   method="post" name="myform1">
				      <table  border="1" background="./images/12.png">
				  <%
                   List<Order>      list=(List<Order>)request.getAttribute("list");
                   System.out.print(list);
                   Iterator<Order>  it=list.iterator();
                   System.out.print(it);
                   while(it.hasNext()){
                         Order order=it.next();
                  %>
				             <tr  >
				                  <td width="300">订单号:</td>
				                  <td align="center" width="390">
				                          <%=order.getId()%>
				                  </td>
				                  
				                  
				             </tr>
				              <tr>
				                  <td >订单状态:</td>
				                  <td align="center"><%=order.getOrderState() %></td>
				             </tr>
				              <tr>
				                  <td>会员名:</td>
				                  <td align="center"><%=request.getSession().getAttribute("zhanghao")%></td>
				             </tr>
				              <tr>
				                  <td >收款人:</td>
				                  <td align="center"><%=order.getReceiver()%></td>
				             </tr>
				             <tr>
				                  <td  colspan="2"  align="center">
				                  		 <input  type="image"   src="./images/find.png" onclick="return updateOrder(<%=order.getId()%>)" >
				                  </td>
				             </tr>
				              
				    <%} %>   
				      </table>
				</form>
  	        </div>
  	 </div>
  
 </body>
</html>
