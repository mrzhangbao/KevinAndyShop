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
    
    <title>管理员添加</title>
    
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
	.regist{
	
	
	
	}
		.login tr{
	margin-top: 10px;
	
	}
	#result{
		padding-left:450px;
		padding-top:30px;
	
	
	}
	
	td{
	padding-top: 8px;
	
	}
	

	#bt{
	width: 70px;
	height: 30px;
	margin-top:20px;
	 border-radius:75px
	}
	#show{
	color: red;
	}
	</style>
	<script type="text/javascript" src="JS/checktype.js"></script>

  </head>
  
  <body>
  
  <h3 align="center"> 管理员添加</h3>
   <div class="regist" width="300" >
  <s:form action="addAdmin" method="post" name="info"  >
		  <table align="center" width="300" style="text-align: left"    class="tab">
		  
		 
		    <tr>
			<td><s:textfield name="admin.username" id="username" label="管理员账号"  placeholder="username" maxLength="16"></s:textfield></td>
	        </tr>
		    <tr>
			<td><s:password name="admin.password" id="password" label="管理员密码"  placeholder="输入密码（6~16）" maxLength="16" onkeyup="password()"></s:password></td>
	        </tr>
		    <tr>
			<td><s:select name="admin.level" id="level" label="管理员等级"  list="{'普通管理员','超级管理员'}" ></s:select></td>
	        </tr>
		   
		   
				
	     </table>
	     
	    <div class="addUser" id="Rbutton" >
	     <s:submit value="注册" class="button" id="bt" align="center" style="background-color:#55ACEF "></s:submit>
	      </div>
	       
      </s:form>
      <div id="result" ><h1 id="show"><s:property value="#message"></s:property></h1></div>
      </div>
  </body>
</html>
