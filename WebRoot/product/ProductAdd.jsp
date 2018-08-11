<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ProductAdd.jsp' starting page</title>
    
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
           /*   rgb(74,200,9)   rgb(106,216,207)   */
              background-color: rgb(106,216,207) ;
              background-image: url(./images/tomcat1.gif);
	          background-repeat: no-repeat;
	        
       }
  
  
          
  </style>
        <script  >
              function flash() {
				      document.all.myform1.submit();
				      return false;
			}
        </script>
      
  </head>
  
  <body  background="./images/ht_02_13.gif">
  		<div id="myid1">
           <img   alt="这是图片"   src="./images/9.bmp"   width="800" height="100" > 
           		
        </div>
        <div id="myid2">  
               <table>
                  <tr>  
           		            <td>您好，<%=request.getSession().getAttribute("zhanghao")%>!</td>
           		            <td><a href="./admin/Shopping.jsp"><img src="./images/ht_02_02.gif" /></a></td>
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
	  					<td><a   href="CategoryServletAdd?level=3&&pid=288&&name='apple'"> 添加类别</a></td>
	  				</tr>
	  				<tr>   
	  					<td>订单管理</td>
	  				</tr>
	  				<tr>		
	  					<td><a href="OrdersServletAll?page=1"> 查看订单</a></td>
	  				</tr>
	  				<tr>
		  				<td> <a href="OrdersServletAll?page=1">订单查询</a> 
		  				</td>
	  			     </tr>
		   
		   
			</table>
  		</div>
  		<div id="myid5">
  		  	<div>
  		  		<img alt="" src="./images/add.gif" width="600"height="30"> 	
  		  	</div>
  		  	<div>
  		  		<form action="ProductAdd"  method="post" name="myform1" >
						<table  id="mytable"  width="600" height="500" border="1">
					<tr>
	 					<td  width="100" >编辑商品:
	 					
	 		           
	 					</td>
	 					<td>
	 							<input  type="text" size="20" name="name" >
	 					</td>
	 				</tr>
	 				<tr>
		    		     <td> 
		    		                   商品名称:
		    		     </td>		
	 				     <td>
	 							<input  type="text" size="20" name="filename" >
	 					</td>
	 				</tr>
				 	<tr>
				 	     <td>选择类别：</td>
				 	     <td>
	 							<select  name="categoryid">
						 	     		<option>内衣</option>
						 	     		<option>毛衣</option>
				 	            </select>
	 					</td>
				 	</tr>
				 	
                  
				 	<tr>  
				 		<td>采购价格:</td>
				 		<td>
	 							<input  type="text" size="20" name="baseprice"/>
	 					</td>
				 	</tr><tr>
				 		<td>市场价格:</td>
				 		<td>
	 							<input  type="text" size="20" name="marketprice"/>
	 					</td>
				 	</tr><tr>
				 		<td>销售价格:</td>
				 		<td>
	 							<input  type="text" size="20" name="sellprice" />
	 					</td>
				 	</tr>
				 	<tr>
		    		     <td> 是否为推荐:
		    		     </td>
		    		     <td>
	 							<input  type="radio" value="1"name="comment"/>
	 					</td>		
	 				</tr>
	 				
	 				<tr>
		    		     <td>性别 :
		    		     </td>
				 	     <td>
			 					<select  name="sexrequest">
						 	     		<option>男</option>
						 	     		<option>女</option>
						 	     </select>
	 					</td>
		    		   
	 				</tr>
				 			
				 	<tr>
		    		     <td > 商品说明：
				    		     
		    		     </td>
		    		    <td>
		    		    		<a   href="index.jsp">
				    		                            上传图片:<input  type="button"value="浏览" >
				    		     </a>
		    		    		
		    		    </td>		
	 				</tr>
	 				<tr>
		 					<td colspan="2">
		 					       <textarea rows="5" cols="20" name="description"></textarea>  
		 					</td>
		 					
		 			 </tr>
				 	<tr>
		    		     <td align="center" colspan="2">
		    		           <input  type="button"size="20" value="提交"  onclick="flash();"/>
		    		     </td>
		    		</tr>			
				        </table>
				</form>
  		  	</div>
  		</div>
  		
  </body>
</html>
