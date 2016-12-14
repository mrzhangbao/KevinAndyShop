<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'success.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript">
		var i = 3;
		function shownum() {
			
			document.getElementById("time").innerHTML=i+"秒后自动跳转至主页面";
			setTimeout('shownum()', 1000);
			i = i-1;
			if(i==0){
				document.index.action("indexAction");
				return;
			}
		}
		
		
		
	
	</script>
	<style type="text/css">
		h1{
		color:blue;
		padding-top:120px;
	
		}
	</style>

  </head>
  
  <body onload="shownum()">
    <h1 align="center">注册成功</h1> <br>
    
    <div id="time"></div>
    <form action="indexAction" method="post" name="index" ></form>
  </body>
</html>
