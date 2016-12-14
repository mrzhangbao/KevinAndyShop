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
    
    <title>商品种类添加</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
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
	color:#FFA500 ;
	}
	
	</style>
  </head>
  
  <body>
  <div id="result"><h3 id="show"><s:property value="#message"></s:property></h3></div>
  	 <s:form action="addCategory" method="post"   >
		  <table align="center" width="300" style="text-align: left"    class="tab">
		  
		   <tr>
			<td><s:textfield name="category.categoryname" label="商品种类"  placeholder="商品种类" id="categoryname"  /></td>
	        </tr>
		    
	     </table>
	     
	    <div class="addUser" id="Rbutton" >
	     <s:submit value="添加" class="button" id="bt" align="center" style="background-color:#55ACEF "></s:submit>
	      </div>
	       
      </s:form>
  </body>
</html>
