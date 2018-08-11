<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="com.bochy.entity.Image" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'imageBrowse.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body background="./images/ht_02_13.gif">
     <table  border="2" bgcolor="pink" id="id5">
                  <tr>
                       <td>image</td>
                       <td>filename</td>
                       <td>love</td>
                  </tr>
             <%
                List<Image>   list=(List<Image>)request.getAttribute("list");
                Iterator<Image>  it=list.iterator();
                while(it.hasNext()){
                    Image     image=it.next();
              %>     
                  <tr>
                       <td> <img  style="width: 100px" alt="您好" src="./upload/<%=image.getFileName()%>">      </td>
                       <td><%=image.getFileName()%></td>
                       <td><a   href="servletDownLoad?fileName=<%=image.getFileName()%>">love</a></td>
                  </tr>
              <%} %>   
          </table>
  </body>
</html>
