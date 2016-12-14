<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>成功</title>
    
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
		img{
		margin-left:55px;
		
		}
	</style>

  </head>
  
  <body style="background-color: #D4D4D4">
   <div id="welcome">
   <h1 align="center">操作成功</h1>
   <img  alt="" src="./images/back/logohoutai2.png">
   <h1>欢迎使用KevinAndy后台管理系统</h1>
   
   </div>
  </body>
</html>
