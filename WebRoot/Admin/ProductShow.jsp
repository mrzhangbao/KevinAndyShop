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
    
    <title>My JSP 'ProductShow.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	
		.word{
		color:red;
		
		
		}
		#img{
		width:135px;
		height:100px;
		
		
		}
		#price{
		color:red;
		
		}

	</style>

  </head>
  
  <body>
  
  	<h2 align="center">Kevin商城商品库</h2>
  
    <table 
			cellpadding="8">
			<tr>
				
				<td id="title">商品图片</td>
				<td id="title">商品名称</td>
				<td id="title">采购价格</td>
				<td id="title">市场价格</td>
				<td id="title">销售价格</td>
				
			</tr>
			<s:iterator value="#list">
				<tr>
				
				<td><img id="img" alt="显示图片" src="<s:url action='showImages'><s:param name='name' value='uploadfile'></s:param></s:url>"></img></td>
				
					<td><s:property   value="%{productname}"></s:property></td> 
					<td><s:property  value="%{baseprice}"></s:property></td>
					<td><s:property  value="%{marketprice}"></s:property></td>
					<td id="price"><s:property  value="%{sellprice}"></s:property></td>
					
					<!--  
					<td><s:a action="updateAdmin" ><s:param  name="id" value="id"></s:param><img  id="tools" alt="点击修改" src="./images/back/repeat.png"></s:a></td>
					<td><s:a action="deleteAdmin" ><s:param name="id" value="id"></s:param><img id="tools" alt="点击删除" src="./images/back/delete.png"></s:a></td>
					-->
				</tr>
			</s:iterator>
		</table>
  </body>
</html>
