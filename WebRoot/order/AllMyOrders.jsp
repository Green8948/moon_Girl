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
    
    <title>My JSP 'AllMyOrders.jsp' starting page</title>
    
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
                function  findOrderByFirstPage(){
                        window.location.href="OrdersServletAll";  //跳转
                        /*   return false;  */
              } 
               function  findOrderByPreviousPage(page){
               			/* alert(page); */
                        page=page-1;
                        /* alert(page.isNaN); */
                        window.location.href="OrdersServletAll?page="+page; 
                      /*  return false;  */
              }
              
              function  findOrderByNextPage(page){
                        page=page+1;
                        window.location.href="OrdersServletAll?page="+page;  
                      /*  return false; */
              } function  findOrderByFinalPage(page){
                        window.location.href="OrdersServletAll?page="+page;
                       /*  return false; */
                         
              }
              function  searchProduct(id){
                        window.location.href="ProductServletFind?id="+id;
                        return false;
              }
              function   deleteProduct(id){
              				alert("1");
                        window.location.href="ProductServletDelete?id="+id;
                        return false;
              }
              function   updateOrder(id){
                        window.location.href="OrderServletUpdate?id="+id;
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
						    <table border="1" height="400" width="700" id="id4" background="./images/12.png">
   		      <tr align="center"  height="40"   >
                        <td  width="100">订单号</td>
	                    <td  width="100">消费者</td>
	                    <td  width="100">customer</td>
	                    <td  width="100">地址</td>
	                    <td  width="100">创建时间</td>
                        <td width="100">订单状态</td>
                        <td>查询</td>
              </tr>
              
               
              <%        
                       /*  int   num=(Integer)request.getAttribute("num");
                           System.out.println("num====="+num+". . ."); */
                        int   page1=(Integer)request.getAttribute("page");
                        System.out.println(page1+"  "+"page1");
                        int   totalPage=(Integer)request.getAttribute("totalPage"); 
                        System.out.println(totalPage+"  "+"totalPage");
                        List<Order>      list=(List<Order> )request.getAttribute("list");
                     
                        
                        if(list!=null){
                        Iterator<Order>  it=list.iterator();
                        while(it.hasNext()){
                                   Order order=it.next();
                                           
                               
              %> 
	               <tr>
	                   
	                   <td><%=order.getId() %></td>
	                   <td><%=order.getReceiver() %></td>
	                   <td><%=request.getSession().getAttribute("zhanghao")%></td>
	                   <td><%=order.getAddress() %></td>
	                   <td><%=order.getOrderTime()%></td>
	                   <td><%=order.getOrderState()%></td>
	                   <td>
                              <input  type="image"   src="./images/find.png" onclick="return updateOrder(<%=order.getId()%>)" >
                       </td>
	                   
	                     
	                     
	              </tr>
              <% }}%>         
              <tr  align="center"  height="40">
	                    <td colspan="5" >
	                           <input   type="button"  value="首页" onclick="return findOrderByFirstPage()" >
	                           <input   type="button"  value="上一页"  onclick="return findOrderByPreviousPage(<%=page1%>)">
	                           <input   type="button"  value="下一页"  onclick="return findOrderByNextPage(<%=page1%>)">
	                           <input   type="button"  value="尾页" onclick="return findOrderByFinalPage(<%=totalPage %>)">
	                            <input   type="text"  value="<%=page1 %>/<%=totalPage %>" readonly="readonly"  size="10">
	                           <%-- <input   type="text"  value="<%=(Integer)request.getAttribute("page1") %>/
	                          <%=(Integer)request.getAttribute("totalPage")%>" readonly="readonly"  size="10"> --%>
	                    </td> 
	          </tr>
	         
         </table>
				</form>
  	 </div></div>
  
  </body>
</html>
