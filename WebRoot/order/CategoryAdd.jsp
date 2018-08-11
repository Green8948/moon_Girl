<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'CategoryAdd.jsp' starting page</title>
    
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
              
              function  searchProduct(id){
                        window.location.href="ProductServletFind?id="+id;
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
  		  		<img alt="" src="./images/category.gif" width="700"height="30"> 	
  		  	</div>
  		  	<div>
  		  		<form action="CategoryServletAdd"  method="post" name="myform1">
						 <table   width="700" border="1"  >
                                      <tr align="center"  height="20"  >
                                               <td  width="20"  valign="bottom">
                                                    <ul type="circle"><li>                                                      
                                                                                                           类别名称:
                                                    </li></ul>                                                       
                                               </td >
                                               <td  width="100" bgcolor="white">
                                               		<input type="text" name="name"  maxlength="18" size="50" >
                                               </td>
                                      </tr>
                                      <tr align="center"  height="20"  >
                                               <td  width="20"  valign="bottom">
                                                    <ul type="circle"><li>                                                      
                                                                                                                   父类别:
                                                    </li></ul>                                                       
                                               </td >
                                               <td  width="100" bgcolor="white">
                                               		<input type="text" name="level"  maxlength="18" size="50" >
                                               </td>
                                      </tr>
                                      <tr align="center"  height="20"  >
                                               <td  width="20"  valign="bottom">
                                                    <ul type="circle"><li>                                                      
                                                                                                                     子类别:
                                                    </li></ul>                                                       
                                               </td >
                                               <td  width="100" bgcolor="white">
                                               		<input type="text" name="pid"  maxlength="18" size="50" >
                                               </td>
                                      </tr>
                                       <tr>
                                      		 
                                      		<td colspan="2" align="center">
                                      		      <input type="submit" value="提交"> 
                                      		 <!-- <img alt="" src="./images/submit.png"> -->
                                      		</td>
                                        </tr>
                         
                         
                          </table>
				</form>
  		  	</div>
  		</div>
  </body>
</html>
