<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>KevinAndy商城后台系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	body{
	background-image: url("./images/back/back_bg.jpg");
	font-weight: bold;
	font-family:Microsoft YaHei,Verdana,Arial,SimSun;
	
	}
	img{
	margin-left:150px;
	margin-bottom: 20px;
	
	
	}
	.login{
	padding-top:15px;
	margin-left: 420px;
	margin-right: 420px;
	margin-top:220px;
	background-color: rgba(0, 0, 0, 0.22);
	
	}
	.login tr{
	margin-top: 10px;
	
	}
	.label{
	color: #F4A460;
	font-weight: bold;
	
	
	}
	td{
	padding-top: 8px;
	
	}
	#Rbutton{
	padding-bottom: 35px;
	padding-top:20px;
	
	
	}
	#bt{
	width: 70px;
	height: 30px;
	 border-radius:75px
	}
	</style>

  </head>
  
  <body>
  
  
  
  
   <div class="login" width="300" >
   <img alt="" src="./images/back/logo_houtai1.png">
  <s:form action="loginAdmin" method="post" name="info"  >
		  <table align="center" width="300" style="text-align: left"    class="tab">
		  
		 	<tr>
			<td><s:textfield name="username" id="username" label="管理员账户"  placeholder="登陆账号" maxLength="16"></s:textfield></td>
	        </tr>
		    <tr>
			<td><s:password name="password" id="password" label="管理员密码"  placeholder="输入密码（6~16）" maxLength="16" onkeyup="passwordcheck()"></s:password></td>
	        </tr>
		
				
	     </table>
	     <div id="result" ><s:property value="#message"></s:property></div>
	    <div class="addUser" id="Rbutton" >
	     <s:submit value="登陆" class="button" id="bt" align="center" style="background-color:#00FF00 "></s:submit>
	      </div>
	       
      </s:form>
      </div>
    
  </body>
</html>
