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

<title>管理员修改</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
body{font-family:Microsoft YaHei,Verdana,Arial,SimSun;color:#666;font-size:14px;background:#f6f6f6; overflow:hidden}
	
h3 {
	
}

#bt {
	width: 70px;
	height: 30px;
	margin-top: 20px;
	background-color: #FFA500;
	font-weight: bold;
	font-family:Microsoft YaHei,Verdana,Arial,SimSun;
	color:#000000;
	border-radius:35px


}
#result{
		padding-left:450px;
		padding-top:30px;
	
	
	}
	#show{
	color: red;
	}

</style>

</head>

<body>
	<h3 align="center">管理员信息修改</h3>
	<s:form action="saveAdmin" method="post" target="body">

		<table align="center" style="text-align: left">
			<tr>
				<td><s:hidden name="id" value="%{admin.id}"></s:hidden></td>

				<td><s:textfield name="#admin.id" label="管理员ID" /></td>
				<td><s:textfield name="#admin.username" label="管理员账号" /></td>
				<td><s:textfield name="#admin.password" label="管理员密码" /></td>

				<td><s:select name="#admin.level" label="管理员等级"
						list="{'普通管理员','超级管理员'}" /></td>

			</tr>
		</table>
		<s:submit value="提交" id="bt" align="center" />
	</s:form>
	<div id="result"><h3 id="show"><s:property value="#message"></s:property></h3></div>
</body>
</html>
