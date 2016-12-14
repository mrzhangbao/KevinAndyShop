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
    
    <title>用户注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="CSS/regist.css">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	h3{
	color:#CDC9C9;
	font-weight: bold;
	font-size: 25;
	padding-top: 25;
	
	}
	input{
	background:#00000000;
	}
	
	.tdLabel{
	font-size: 20px;
	color:#fff;
	padding-right:10px;
	
	}
	.tab td{
	
			margin-top: 20px;
			padding-top: 15px;
	}
	.regist{
			margin-left:480px;
			background-image: url("images/bg.png");
			background-repeat: none;
			background-position: absolute;
			width: 380;
	}
	.button{
			font-weight:bold;
			border:none;
			color:#ffffff;
			padding-left:30px;
			padding-right:30px;
			border-radius:10px;
			font-size:18px;
			height:30px;
			margin-left:5px;
			margin-top:18px;
			margin-bottom: 18px;

	}
	
	#result{
	padding-left:125px;
	padding-top:20px;
	height:35px;
	
	}
	</style>
	<!--document.getElementById("Rbutton").style.display="none";-->
	<script type="text/javascript" src="JS/ajax.js"></script>
	<script type="text/javascript" src="JS/checktype.js"></script>
	<script type="text/javascript">
    	function add() {document.info.action="add";}
    	function formcheck(){
    	
    
    	
			var url="phoneChcek";
			var params = "phone="+document.getElementById("phone").value;
			sendRequest(url,params,'POST',showresult);
			}
			
			function showresult(){
			
				if(xmlHttpRequest.readyState == 4){
					if(xmlHttpRequest.status == 200){
						var info = xmlHttpRequest.responseText;
						if(info == "1"){
						document.getElementById("bt").disabled=false;
						document.getElementById("result").innerHTML="";
						document.getElementById("bt").style.background="#55ACEF";
						document.getElementById("bt").style.color="#fff"
					
						
						
						}else{
					
						document.getElementById("result").innerHTML= info;
						document.getElementById("bt").disabled=true;
						document.getElementById("bt").style.background="#cccccc";
						document.getElementById("bt").style.color="#000000";
						document.getElementById("result").style.color="red";
						}
						
						
						
						}
				
				}else{
				
				}
			}
			
			
    
    </script>
  </head>
  
  <body  background="images/bg.jpg">
  <h3 style="text-align: center" >用户注册</h3>
  <div class="regist" width="300" >
  <s:form action="addAction" method="post" name="info"  >
		  <table align="center" width="300" style="text-align: left"    class="tab">
		  
		   <tr>
			<td><s:textfield name="userDetailInfo.phone" label="手机号码"  placeholder="手机号码" maxLength="16" id="phone" onblur="formcheck()" /></td>
	        </tr>
		    <tr>
			<td><s:textfield name="userDetailInfo.username" id="username" label="用户昵称"  placeholder="个性昵称" maxLength="16"></s:textfield></td>
	        </tr>
		    <tr>
			<td><s:password name="userDetailInfo.password" id="password" label="用户密码"  placeholder="输入密码（6~16）" maxLength="16" onkeyup="passwordcheck()"></s:password></td>
	        </tr>
		   
		    <tr>
			<td><s:textfield name="userDetailInfo.name" id="name" label="真实姓名"  placeholder="*真实姓名(选填)" maxLength="16"></s:textfield></td>
	        </tr>
		    <tr>
			<td><s:textfield name="userDetailInfo.address"  label="常用地址"  placeholder="*请输入地址(选填)" maxLength="16"></s:textfield></td>
	        </tr>
		    <tr>
			<td><s:textfield name="userDetailInfo.postcode" label="邮政编码"   placeholder="*邮政编码(选填)" maxLength="16"></s:textfield></td>
	        </tr>
	        <tr align="center" >
	       
				</tr>
				
	     </table>
	     <div id="result" ></div>
	    <div class="addUser" id="Rbutton" >
	     <s:submit value="注册" class="button" id="bt" align="center" style="background-color:#55ACEF "></s:submit>
	      </div>
	       
      </s:form>
      </div>
    
  </body>
</html>
