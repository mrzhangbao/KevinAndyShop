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
    
    
    <title>登陆</title>
    
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
		style="display:none;"
		
		
		function shownum() {
			
			document.getElementById("time").innerHTML="注册成功，"+i+"秒后自动关闭";
			timeshow = setTimeout('shownum()', 1000);
			i = i-1;
			
			if(i==0){
				setTimeout('login()', 1000);
				
				
			}
		}
		function login(){
		document.getElementById("time").style.display="none";
		clearTimeout(timeshow);
		}
		
		
	
	</script>
	
	<script type="text/javascript" src="js/jquery.easydrag.handler.beta2.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript">
	
	</script>
	
	<style type="text/css">
	
		#time{
			
			font-weight:bold;
			font-size:25px;
			color:blue;
			padding-left:520px;
			padding-top:120px;
			
		
		}
		#result{
			font-weight:bold;
			font-size:25px;
			color:#FF6EB4;
			padding-left:520px;
			padding-top:100px;
		
		}
	</style>
	
	<link href="CSS/style_login.css" rel='stylesheet' type='text/css' />


<script src="JS/jquery.min.js"></script>

  </head>
  
  <body onload="shownum()" background="images/bg1.jpg">
  
  
  <div id="time"></div>
  
  <script>$(document).ready(function(c) {
	$('.close').on('click', function(c){
		$('.login-form').fadeOut('slow', function(c){
	  		$('.login-form').remove();
		});
	});	  
});
</script>

<div class="login-form">
	<div class="close"> </div>
		<div class="head-info">
			<label class="lbl-1"> </label>
			<label class="lbl-2"> </label>
			<label class="lbl-3"> </label>
		</div>
			<div class="clear"> </div>
	<div class="avtar">
		<img src="images/login/avtar.png" />
	</div>
			<form action="userLoginChcek" method="post">
					<input type="text" class="text" placeholder="MobilePhone" name="username" id="username"   >
						<div class="key">
					<input type="password"  placeholder="password" name="password" id="password"   >
						</div>
						<div class="signin">
		<input type="submit" value="Login">
	</div>
			</form>
	
</div>


  
  
  
   
  </body>
</html>
