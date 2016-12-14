<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户显示界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">

	
	</script>

  </head>
  
  <body>
  <b><s:a action="queryAllInfo"><font size="3" color=#0000  >所有用户信息</font></s:a></b>
    <table align="center" width="300" border="6" bordercolor="#DEDEDE" cellpadding="8" >
			<tr >
				<td>用户ID</td>
				<td><font>用户昵称</font></td>
				<td>用户密码</td>
				<td>手机号码</td>
				<td>真实姓名</td>
				<td>常用地址</td>
				<td>邮政编码</td>
			</tr>
			<s:iterator value="#list" >
				<tr >
					<td><s:property value="%{id}"></s:property></td>
					<td><s:property value="%{username}"></s:property></td>
					<td><s:property value="%{password}"></s:property></td>
					<td><s:property value="%{phone}"></s:property></td>
					<td><s:property value="%{name}"></s:property></td>
					<td><s:property value="%{address}"></s:property></td>
					<td><s:property value="%{postcode}"></s:property></td>
				</tr>
			</s:iterator>
		</table>
  </body>
</html>
