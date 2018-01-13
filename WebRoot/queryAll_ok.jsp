<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'getAll_ok.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <table>
    	<tr>
    	<td>编号</td>
    	<td>姓名</td>
    	<td>年龄</td>
    	<td>操作</td>
    	</tr>
    	<c:forEach items="${user }" var="user">
    	    	<tr>
    	<td>${user.id }</td>
    	<td>${user.name }</td>
    	<td>${user.age }</td>
    	<td>
    	<a href="user_delete?id=${user.id }">删除</a>
    	<a href="user_queryUserById?id=${user.id }">修改</a>
    	</td>
    	</tr>   	
    	</c:forEach>
    </table>
<a href="add.jsp">添加用户</a>
  </body>
</html>
