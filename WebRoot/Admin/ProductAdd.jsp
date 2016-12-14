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
    
    <title>商品添加</title>
    
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

	.tdLabel{
	font-size: 15px;
	color:#000000;
	font-family:Microsoft YaHei,Verdana;
	font-weight:bold;
	padding-right:10px;
	
	}
	
	。tab td{
	padding-top:5px;
	
	
	}
	
	
	h2{
	
	color:#000000;
	font-family:Microsoft YaHei,Verdana;
	
	
	}
	#show{
	color: #1E90FF;
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

	
	</style>


  </head>
  
  <body>
   		
   		
   		<h2 align="center">Kevin商品添加 </h2>
   		<div id="result"><h1 id="show"><s:property value="#message"></s:property></h1></div>
   		<s:form action="fileupload" method="post"  enctype="multipart/form-data"  >
		  <table align="center" style="text-align: left"    class="tab">
		  
		   <tr>
			<td><s:textfield name="productname" label="商品名称"  placeholder="商品名称" maxLength="16"  /></td>
	       </tr>
	       
	        <tr>
	        <td><s:select  label="商品种类" list="%{list}" listKey="id" listValue="categoryname" name="category"></s:select></td>
	        </tr>
	       
		    <tr>
			<td><s:textfield name="baseprice" id="baseprice" label="采购价格"  placeholder="采购价格" maxLength="16" ></s:textfield></td>
	        </tr>
		   
		    <tr>
			<td><s:textfield name="marketprice" id="marketprice" label="市场价格"  placeholder="市场价格" maxLength="16"></s:textfield></td>
	        </tr>
		    <tr>
			<td><s:textfield name="sellprice"  label="销售价格"  placeholder="销售价格" maxLength="16"></s:textfield></td>
	        </tr>
		    <tr>
			<td><s:file name="file" label="商品图片"  ></s:file></td>
	        </tr>
	      
		    <tr>
			<td><s:textfield  name="description" id="description" label="商品描述"  placeholder="简单描述商品特点(125字以内)" maxLength="125"></s:textfield></td>
	        </tr>
	        
	       
	       
				
	     </table>
	     <div id="result" ></div>
	    <div class="addUser" id="Rbutton" >
	     <s:submit value="商品上架" class="button" id="bt" align="center" style="background-color:#55ACEF "></s:submit>
	      </div>
	       
      </s:form>
  
  </body>
</html>
