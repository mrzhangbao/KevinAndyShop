<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>爱购机商城</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	
	-->
	<link rel="stylesheet" href="CSS/style.css" type="text/css" media="screen, projection"/>
<script type='text/javascript' src='JS/jquery.min.js'></script>
<script type="text/javascript" language="javascript" src="JS/jquery.dropdown.js"></script>
<script type="text/javascript" src="JS/jquery.easydrag.handler.beta2.js"></script>
<script type="text/javascript" src="JS/jquery.js"></script>
    <link href="CSS/tabs7.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="CSS/none.css">
    
   
    
  </head>
  
  <body>
 <div id="tabs7">
  <ul>
    <li><a href="#" title="Link 1" target="body"><span>首页</span></a></li>
    <li><a href="#" title="Link 2" target="body"><span>男装</span></a></li>
    <li><a href="#" title="Link 3" target="body"><span>女装</span></a></li>
    <li><a href="#" title="Longer Link Text" target="body"><span>鞋子</span></a></li>
    <li><a href="#" title="Link 5" target="body"><span>超市</span></a></li>
    <li><a href="#" title="Link 6" target="body"><span>推荐</span></a></li>

				
					
    <li id="regist"><a  href="#"><span>注册</span></a></li>
    <li id="regist"><a  href="#"><span>登陆</span></a></li>
  </ul>

</div>


  </body>
</html>
