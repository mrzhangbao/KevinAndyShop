<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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

<title>用户修改</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	img{
		width: 20px;
		height: 20px;
	
	}
	#title{
	color:red;
	
	
	}
	#result{
		padding-left:450px;
		padding-top:30px;
	
	
	}
	#show{
	color: red;
	}
	#tools{
	width: 30px;
	height: 30px;
	padding-left:16px;
	
	}
	</style>
	

</head>

<body>
<h3 align="center">管理员修改界面</h3>
<div id="result"><h1 id="show"><s:property value="#message"></s:property></h1></div>
	<form action="updateAdmin" method="post">
		<table align="center" border="6" bordercolor="#DEDEDE"
			cellpadding="8">
			<tr>
				<td id="title">ID</td>
				<td id="title">管理员账户</td>
				<td id="title">管理员密码</td>
				<td id="title">管理员等级</td>
				<td id="title">点击修改</td>
				<td id="title">点击删除</td>
			</tr>
			<s:iterator value="#list">
				<tr>
					<td><s:property  value="%{id}"></s:property></td>
					<td><s:property value="%{username}"></s:property></td>
					<td><s:property value="%{password}"></s:property></td>
					<td><s:property value="%{level}"></s:property></td>
					
					<td><s:a action="updateAdmin" ><s:param  name="id" value="id"></s:param><img  id="tools" alt="点击修改" src="./images/back/repeat.png"></s:a></td>
					<td><s:a action="deleteAdmin" ><s:param name="id" value="id"></s:param><img id="tools" alt="点击删除" src="./images/back/delete.png"></s:a></td>
				</tr>
			</s:iterator>
		</table>

	</form>
	

</body>
</html>
