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

<title></title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="./CSS/back/zzsc.css" type="text/css" rel="stylesheet">
<script src="./JS/back/jquery-1.3.2.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
$(".subNav").click(function(){
			$(this).toggleClass("currentDd").siblings(".subNav").removeClass("currentDd")
			$(this).toggleClass("currentDt").siblings(".subNav").removeClass("currentDt")
			
			// 修改数字控制速度， slideUp(500)控制卷起速度
			$(this).next(".navContent").slideToggle(500).siblings(".navContent").slideUp(500);
	})	
})
</script>
</head>

<body>
	<div class="subNavBox">
		
	<div class="subNav">商品管理</div>
	<ul class="navContent">
			
			<li><s:a action="getinfo"  target="body">商品查询</s:a></li>
			<li><s:a action="getCateCategory" target="body">添加商品</s:a></li>
			<li><s:a action="getinfo" target="body">修改商品</s:a></li>
			<li><s:a action="getinfo" target="body">删除商品</s:a></li>
			<li><s:a action="getinfo" target="body">商品显示</s:a></li>
	</ul>
	<div class="subNav">订单管理</div>
	<ul class="navContent">
			<li><a href="#" target="body">客户地址</a></li>
			<li><a href="#" target="body">订单详情</a></li>
			<li><a href="#" target="body">订单修改</a></li>
			<li><a href="#" target="body">物流信息</a></li>
	</ul>
	
	<div class="subNav currentDd currentDt">商品类别</div>
		<ul class="navContent " style="display:block">
			<li><a href="./Admin/CategoryAdd.jsp" target="body">类别添加</a></li>
			<li><s:a action="getinfoCategory" target="body">类别修改</s:a></li>
			<li><s:a action="getinfoCategory" target="body">类别删除</s:a></li>
			
	</ul>
	<div class="subNav">客户管理</div>
	<ul class="navContent">
			<li><a href="#"  target="body">会员信息</a></li>
			<li><a href="AdminAdd.jsp" target="body">会员添加</a></li>
			<li><a href="#"  target="body">会员修改</a></li>
			<li><a href="#"  target="body">会员删除</a></li>
			<li><a href="#"  target="body">管理员添加</a></li>
			<li><a href="#"  target="body">管理员删除</a></li>
	</ul>
</div>
	<div class="subNav">系统管理</div>
	<ul class="navContent">
			<li><a href="./Admin/AdminAdd.jsp"  target="body">管理员添加</a></li>
			<li><s:a action="getinfoAdmin"  target="body">管理员修改</s:a></li>
			<li><s:a action="getinfoAdmin"  target="body">删除管理员</s:a></li>
			<li><s:a action="infoAdmin"  target="body">管理员查询</s:a></li>
			<li><a href="#"  target="body">系统版本</a></li>
			
	</ul>
</div>
</body>
</html>
