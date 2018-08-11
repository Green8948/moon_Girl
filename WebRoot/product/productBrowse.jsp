<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="com.bochy.entity.Product"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'productBrowse.jsp' starting page</title>
    
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
                function  findProductByFirstPage(){
                        window.location.href="ProductServletBrowse";  //跳转
                        /*   return false;  */
              } 
               function  findProductByPreviousPage(page){
               			/* alert(page); */
                        page=page-1;
                        /* alert(page.isNaN); */
                        window.location.href="ProductServletBrowse?page="+page; 
                      /*  return false;  */
              }
              
              function  findProductByNextPage(page){
                        page=page+1;
                        window.location.href="ProductServletBrowse?page="+page;  
                      /*  return false; */
              } function  findProductByFinalPage(page){
                        window.location.href="ProductServletBrowse?page="+page;
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
              function   updateProduct(id){
                        window.location.href="ProductServletUpdate?id="+id;
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
  		  		<img alt="" src="./images/browse.gif" width="700"height="30"> 	
  		  	</div>
  		  	<div>
  		  		<form action="ProductServletBrowse"  method="post" name="myform1">
						 <table   width="700" border="1"  >
                                      <tr align="center"  height="40"  style="background-color:rgb(74,200,9)" >
                                               <td  width="100"></td>
                                               <td  width="100">商品名称</td>
                                               <td  width="100">销售价格</td>
                                               <td  width="100">商品咨询</td>
                                               <td  width="300">商品说明</td>
                                      </tr>
                       <%
                                int   page1=(Integer)request.getAttribute("page");
                                int   totalPage=(Integer)request.getAttribute("totalPage");
                                List<Product>      list=(List<Product>)request.getAttribute("ltt");
                                if(list!=null){
                                Iterator<Product>  it=list.iterator();
                                while(it.hasNext()){
                                           Product product=it.next();
                        %>              
                                      <tr  align="center"  height="40">
                                               <td><%=product.getName() %></td>
                                               <td><%=product.getFilename() %></td>
                                               <td><%=product.getSellprice() %></td>
                                               <td><%=product.getDescription() %></td>
                                               <td>
                                                      <input  type="image"   src="./images/find.png" onclick="return searchProduct(<%=product.getId()%>)">
                                                      <input  type="image"   src="./images/upd.png" onclick="return updateProduct(<%=product.getId()%>)" >
                                                      <input  type="image"   src="./images/del.png" onclick="return deleteProduct(<%=product.getId()%>)">
                                               </td>
                                      </tr>
                          <%} }%>           
                                      <tr  align="center"  height="40">
                                               <td colspan="5" >
                                                      <input   type="button"  value="首页" onclick="findProductByFirstPage()" >
                                                      <input   type="button"  value="上一页"  onclick="findProductByPreviousPage(<%=page1%>)">
                                                      <input   type="button"  value="下一页"  onclick="findProductByNextPage(<%=page1%>)">
                                                      <input   type="button"  value="尾页" onclick="findProductByFinalPage(<%=totalPage %>)">
                                                      <input   type="text"  value="<%=page1 %>/<%=totalPage %>" readonly="readonly"  size="10">
                                                     <%--  <input   type="text"  value="<%=(Integer)request.getAttribute("page1") %>/
                                                     <%=(Integer)request.getAttribute("totalPage")%>" readonly="readonly"  size="10"> --%>
                                               </td>
                                      </tr>
                          </table>
				</form>
  		  	</div>
  		</div>
  </body>

</html>
