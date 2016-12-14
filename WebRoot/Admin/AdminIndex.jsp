<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>KevinAndy后台管理系统</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link type="text/css" rel="stylesheet" href="./CSS/back/style.css" />
<script type="text/javascript" src="./JS/back/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="./JS/back/menu.js"></script>

<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


</head>

<frameset rows="70,*">
	<frame src="./Admin/AdminTop.jsp" name="top" scrolling="no">
		<frameset cols="240,*">
			<frame src="./Admin/AdminLeft.jsp" name="left" scrolling="anto">
			<frame src="./Admin/AdminBody.jsp" name="body" scrolling="anto">
		</frameset>
</frameset>
</html>
