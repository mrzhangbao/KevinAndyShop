<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AdminBody.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		body{
	
		
		}
		#welcome{
		margin-top: 220px;
		margin-left:350px;
		
		
		}
	</style>
<link type="text/css" rel="stylesheet" href="./CSS/back/style.css" />
<script type="text/javascript" src="./JS/back/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="./JS/back/menu.js"></script>
  </head>
  
  <body style="background-color: #D4D4D4">
   <div id="welcome">
   <img alt="" src="./images/back/logohoutai2.png">
   <h1>欢迎使用KevinAndy后台管理系统</h1>
   
   </div>
  </body>
</html>
