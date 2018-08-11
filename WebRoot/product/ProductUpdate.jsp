<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="com.bochy.entity.Product" %>
<%@ taglib  prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ProductUpdate.jsp' starting page</title>
    
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
   		top: 70px;
   		z-index: 2;
   		}#myid4{
   		position: absolute;
   		left:130px;
   		top: 130px;
   		z-index: 3;
   		}#myid5{
   		position: absolute;
   		left:320px;
   		top: 100px;
   		background-color: rgb(106,216,207) ;
        background-image: url(./images/tomcat1.gif);
        background-repeat: no-repeat;
   		z-index: 1;
   		}#mydiv{
		    /*   position:absoluate;
		      left:400px; */
		      width: 800px;
		      height: 500px;
		}#update{
   		position: absolute;
   		left:320px;
   		top: 55px;
   		
   		z-index: 2;
   		}
      
  </style>
        <script  >
              function flash() {
				      document.all.myform1.submit();
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
  	        <h3 id="update"><img alt="" src="./images/update.gif" width="800"height="30"> </h3>
  		<div >
	  		<form action="ProductServletUpdate1"  method="post" name="myform1" >
	  		   
	  		<table id="myid4" >
        <%
              List<Product>   list=(List<Product>)request.getAttribute("ltt");
              Iterator<Product> it=list.iterator();
              while(it.hasNext()){
                     Product    product=it.next();
                     request.setAttribute("product",product);
         %>
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
	  		   
			<table   width="800" height="500" border="2" id="myid5">
					<tr>
							<td >编辑商品:
							
				           <input  type="text" size="20" name="name" value="<%=product.getName()%>" >
							</td>
					</tr>
					<tr>
	    		           <td>商品名称:
	    		            <input  type="text" size="20" name="filename" value="<%=product.getFilename()%>"></td>		
					</tr>
				 	<tr>
				 	     <td>选择类别：
						 	     <select  name="categoryid">
						 	     		<option  value="1" <c:if test="${pt.categoryid=='1'}" > selected </c:if>>内衣</option>
						 	     		<option value="2" <c:if test="${pt.categoryid=='2'}">selected </c:if>>毛衣</option>
			 	                        
			 	                 </select>
				 	     </td>
				 	</tr>
				 	
		                
				 	<tr>  
				 		<td>采购价格:<input  type="text" size="20" name="baseprice"  value="<%=product.getBaseprice()%>"/></td>
				 	</tr><tr>
				 		<td>市场价格:<input  type="text" size="20" name="marketprice" value="<%=product.getMarketprice()%>"/></td>
				 	</tr><tr>
				 		<td>销售价格:<input  type="text" size="20" name="sellprice" value="<%=product.getSellprice()%>"/></td>
				 	</tr>
				 	<tr>
		    		    <%--  <td> 是否为推荐:<input  type="radio" <c:if test="${product.comment=='1'}" > checked</c:if> value="1" name="comment"/>
		    		                   <input  type="radio" <c:if test="${product.comment=='2'}" > checked</c:if> value="2" name="comment"/> 
		    	                                
		    		     </td>	--%>	
						</tr>
						
						<tr>
		    		     <td>性别 :<select  name="sexrequest">
				 	     		<option value="1" <c:if test="${pt.sexrequest=='1'}" > selected </c:if>>男</option>
				 	     		<option value="2" <c:if test="${pt.sexrequest=='2'}" > selected </c:if>>女</option>
				 	     		
				 	     </select></td>
		    		   
						</tr>
				 			
				 	<tr>
		    		     <td  > 商品说明：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    		             上传图片:<input  type="button"value="浏览" >
		    		             未选择文件：
		    		     		</td>		
						</tr>
						<tr>
		 					<td>
		 					       <textarea rows="5" cols="20" name="description">
		 					       		<%=product.getDescription() %>
		 					       </textarea>  
		 					</td>
		 				
					        </tr>
				 	<tr>
		    		     <td align="center">
		    		           <input  type="button"size="20" value="确认"  onclick="flash();"/>
		    		           <input  type="text"   name="id" style="display:none"  value="<%=product.getId()%>">   
		    		     </td>		
						</tr>
						 <%} %>			
				</table>
	        </form>
	  	</div>
	
  		
  </body>
</html>
