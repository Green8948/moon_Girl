<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="com.bochy.entity.Category"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AllCategories.jsp' starting page</title>
    
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
                function  findCategoryByFirstPage(){
                        window.location.href="CategoriesServletAll";  //跳转
                        /*   return false;  */
              } 
               function  findCategoryByPreviousPage(page){
               			/* alert(page); */
                        page=page-1;
                        /* alert(page.isNaN); */
                        window.location.href="CategoriesServletAll?page="+page; 
                      /*  return false;  */
              }
              
              function  findCategoryByNextPage(page){
                        page=page+1;
                        window.location.href="CategoriesServletAll?page="+page;  
                      /*  return false; */
              } function  findCategoryByFinalPage(page){
                        window.location.href="CategoriesServletAll?page="+page;
                       /*  return false; */
                         
              }
             
              function   deleteCategory(id){
              				alert("1");
                        window.location.href="CategoriesServletDelete?id="+id;
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
  		  		<form action="CategoriesServletAll"  method="post" name="myform1">
						 <table   width="700" border="1"  >
                                      <tr align="center"  height="40"  style="background-color:rgb(74,200,9)" >
                                               <td  width="100">ID</td>
                                               <td  width="100">类别名称</td>
                                               <td  width="100">子类别</td>
                                               <td  width="100">添加子类别</td>
                                               <td  width="100" >创建时间</td>
                                               <td width="100" >删除</td>
                                      </tr>
                       <%
                                int   page1=(Integer)request.getAttribute("page");
                                int   totalPage=(Integer)request.getAttribute("totalPage");
                                System.out.println(totalPage+"  "+"totalPage");
                                List<Category>      list=(List<Category>)request.getAttribute("list");
                                if(list!=null){
                                Iterator<Category>  it=list.iterator();
                                while(it.hasNext()){
                                           Category category=it.next();
                        %>              
                                      <tr  align="center"  height="40">
                                               <td><%=category.getId() %></td>
                                               <td><%=category.getName() %></td>
                                               <td><%=category.getPid() %></td>
                                               <td><%=category.getLevel() %></td>
                                               <td><%=category.getCategoryTime() %></td>
                                               
                                               <td>														
                                                       <input  type="image"   src="./images/del.png" onclick="return deleteCategory(<%=category.getId()%>)" >
                                                     
                                               </td>
                                      </tr>
                                   <%} }%>
                                      <tr  align="center"  height="40">
                                               <td colspan="5" >
                                                      <input   type="button"  value="首页" onclick="findCategoryByFirstPage()" >
                                                      <input   type="button"  value="上一页"  onclick="findCategoryByPreviousPage(<%=page1%>)">
                                                      <input   type="button"  value="下一页"  onclick="findCategoryByNextPage(<%=page1%>)">
                                                      <input   type="button"  value="尾页" onclick="findCategoryByFinalPage(<%=totalPage %>)">
                                                      <input   type="text"  value="<%=page1 %>/<%=totalPage %>" readonly="readonly"  size="10">
                                                      <%-- <input   type="text"  value="<%=(Integer)request.getAttribute("page1") %>/
                                                     <%=(Integer)request.getAttribute("totalPage")%>" readonly="readonly"  size="10"> --%>
                                               </td>
                                      </tr>
                                        
                          </table> 
				</form>
  		  	</div>
  		</div>
  </body>
</html>
