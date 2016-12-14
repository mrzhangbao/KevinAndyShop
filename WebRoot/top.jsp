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

<title>My JSP 'top.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">


.test ul {
	list-style: none;
}

.test li {
	float: left;
	width: 100px;
	background-color:#fff;
	border-radius:35px;
	margin-left: 3px;
	line-height: 30px;
}

.test a {
	display: block;
	text-align: center;
	height: 30px;
}

.test a:link {
	color: #666;
	font-weight:bold;
	background: url(arrow_off.gif) #fff no-repeat 5px 12px;
	text-decoration: none;
}

.test a:visited {
	color: #666;
	text-decoration: underline;
}

.test a:hover {
	color: #FFF;
	font-weight: bold;
	text-decoration: none;
	background: url(arrow_on.gif) #F00 no-repeat 5px 12px;
}
#float{
float:clear;
float:right;

}
</style>

</head>

<body>
	<div class="test">
		<ul>
			<li><a href="body.jsp" target="body">首页</a></li>
			<li><a href="2" target="body">产品介绍</a></li>
			<li><a href="3" target="body">服务介绍</a></li>
			<li><a href="4" target="body">技术支持</a></li>
			<li><a href="5" target="body">立刻购买</a></li>
			<li><a href="6" target="body">联系我们</a></li>
			<li id="float" ><a href="6" >注册</a></li>
			<li id="float"><a href="6">登陆</a></li>
		</ul>
	</div>
</body>
</html>
