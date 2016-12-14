<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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

<title>My JSP 'AdminTop.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
html, body, div, p, form, label, ul, li, dl, dt, dd, ol, img, button, h1,
	h2, h3, h4, h5, h6, b, em, strong, small {
	margin: 0;
	padding: 0;
	border: 0;
	list-style: none;
	font-style: normal;
	font-weight: normal;
}

dl, dt, dd {
	display: block;
	margin: 0;
}

a {
	text-decoration: none;
}

body {
	font-family: Microsoft YaHei, Verdana, Arial, SimSun;
	color: #666;
	font-size: 14px;
	background: #f6f6f6;
	overflow: hidden
}

.block, #block {
	display: block;
}

.none, #none {
	display: none;
}

.top {
	height: 5px;
	line-height: 5px;
	background: #f6f6f6;
	width: 100%;
	position: fixed;
	z-index: 255;
	top: 79px;
	text-align: center;
}

.bottom {
	height: 5px;
	line-height: 5px;
	background: #f6f6f6;
	width: 100%;
	position: fixed;
	z-index: 255;
	bottom: 50px;
	text-align: center;
}

#header {
	height: 80px;
	line-height: 80px;
	background: #00a5a5;
	width: 100%;
	position: absolute;
	z-index: 5;
	top: 0;
	text-align: center;
}

.logo {
	line-height: 80px;
	font-size: 30px;
	color: #fff;
	letter-spacing: 3px;
	margin-left: 50px;
	float: left;
}
.logo img{
	padding-right:20px;
	padding-top:5px;

}

.navigation {
	float: right;
	margin: 5px 50px 0 0;
	color: #fff;
	font-size: 14px;
}

.navigation ul li {
	height: 30px;
	line-height: 30px;
	text-align: center;
	float: left;
	margin-left: 15px;
}

.navigation ul li a {
	color: #fff;
}

.navigation ul li a:hover {
	color: #32323a;
}
</style>

</head>

<body>
	<div id="header">
		<div class="logo"><img  src="./images/back/logo_houtai1.png">KevinAndy后台管理系统</div>
		<div class="navigation">
			<ul>
				<li>欢迎您！</li>
				<li><s:a  target="body" >Kevin</s:a></li>
				<li><a  target="body">修改密码</a></li>
				<li><a  target="body">设置</a></li>
				<li><a  target="body">退出</a></li>
			</ul>
		</div>
	</div>
</body>
</html>
