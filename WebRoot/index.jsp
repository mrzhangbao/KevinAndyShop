<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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

<title>KevinAndy商城</title>
<link rel="stylesheet" href="CSS/style.css" type="text/css"
	media="screen, projection" />
<script type='text/javascript' src='JS/jquery.min.js'></script>
<script type="text/javascript" language="javascript"
	src="JS/jquery.dropdown.js"></script>
<script type="text/javascript" src="JS/jquery.easydrag.handler.beta2.js"></script>
<script type="text/javascript" src="JS/jquery.js"></script>
<link href="CSS/tabs7.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="CSS/none.css">

<link href="./CSS/back/nzzsc.css" type="text/css" rel="stylesheet">
<script src="./JS/back/jquery-1.3.2.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
		$(".subNav").click(
				function() {
					$(this).toggleClass("currentDd").siblings(".subNav")
							.removeClass("currentDd")
					$(this).toggleClass("currentDt").siblings(".subNav")
							.removeClass("currentDt")

					// 修改数字控制速度， slideUp(500)控制卷起速度
					$(this).next(".navContent").slideToggle(500).siblings(
							".navContent").slideUp(500);
				})
	})
</script>

<style type="text/css">
.search img {
	padding-left: 150px;
	width: 200px;
}

.search form {
	width: 100%;
}

#logo {
	float: clear;
	float: left;
}

#button {
	float: clear;
	background-image: url("images/search.png");
	float: left;
	margin-left: 220px;
	margin-top: 25px;
	width: 520px;
	height: 35px;
}

#sea {
	margin-top: 3px;
	margin-left: 3px;
	height: 30px;
	width: 455px;
}

#bt {
	height: 30px;
	width: 56px;
	background: transparent;
	border: none;
}

.title {
	background-color: #EBEBEB;
	height: 45px;
}

#r {
	float: clear;
	float: right;
	padding-right: 35px;
	padding-top: 15px;
}

#r a:HOVER {
	color: red;
}

#left {
	width: 200px;
	height: 550px;
	float: left;
	margin-top: 25px;
	margin-left: 35px;
	background: rgba(0, 0, 0, 0.22);
}

#right {
	float: clear;
	float: left;
	width: 560px;
}

#showproduct {
	width: 180px;
	background-color: #00000000;
	margin-top: 25px;
	margin-left: 25px;
	float: clear;
	float: left;
}
#showproduct a{
	color: gray;

}
#showproduct a:HOVER{
	border: 2px;
	border-bottom-color: red;

}

#showproduct img {
	width: 160px;
	height: 160px;
}

#market {
	width: 160px;
	height: 15px;
	padding-left: 5px;
	font-size:8px;
	margin-top: 3px;
	font-color: #8A8A8A;
}

#sell {
	width: 160px;
	height: 20px;
	color: red;
	padding-left: 5px;
	margin-top: 5px;
}
#productname{
	padding-left: 5px;
	font-size: 8px;

}
#name a{
	color:#BABABA;
	padding-left: 3px;
	font-size: 5px;

}
</style>




</head>
<body>




	<div class="title">


		<div id="r">
			<s:a href="./userinfo/userRegist.jsp">注册</s:a>
		</div>
		<div id="r">
			<s:a href="./userinfo/login.jsp">登陆</s:a>
		</div>
		<div id="r">
			<s:a href="./userinfo/login.jsp">商家支持</s:a>
		</div>
		<div id="r">
			<s:a href="./userinfo/login.jsp">购物车</s:a>
		</div>
		<div id="r">
			<s:a href="./userinfo/login.jsp">我的宝贝</s:a>
		</div>



	</div>

	<div class="search">

		<form action="searchHOME" method="post">
			<div id="logo">
				<s:a>
					<img alt="" src="images/logo.png">
				</s:a>
			</div>
			<div id="button">
				<s:textfield name="productname" placeholder="输入您想要的宝贝"  id="sea"></s:textfield>
				<input type="submit" id="bt" value=" ">
			</div>
		</form>

	</div>


	<div id="tabs7">
		<div class="box">
			<ul>
				<li><s:a href="#">
						<span>首页</span>
					</s:a></li>
				<li><s:a action="manHOME">
						<span>男装</span>
					</s:a></li>
				<li><s:a action="womanHOME">
						<span>女装</span>
					</s:a></li>
				<li><s:a action="manHOME">
						<span>鞋子</span>
					</s:a></li>
				<li><s:a action="manHOME">
						<span>超市</span>
					</s:a></li>
				<li><s:a action="manHOME">
						<span>推荐</span>
					</s:a></li>
			</ul>
		</div>
	</div>


	<div id="left">

		<div class="subNavBox">


			<div class="subNav">男人/运动户外</div>
			<ul class="navContent " style="display:block">


				<li><a href="#">男外套</a></li>



				<li><a href="#">男鞋</a></li>
				<li><a href="#">男裤</a></li>
				<li><a href="#">衬衫</a></li>
				<li><a href="#">手表</a></li>
				<li><a href="#">男卫衣</a></li>
				<li><a href="#">打底衫</a></li>
				<li><a href="#">山地车</a></li>
				<li><a href="#">男皮带</a></li>
				<li><a href="#">旅行箱</a></li>
				<li><a href="#">双肩包</a></li>
				<li><a href="#">睡衣男</a></li>
				<li><a href="#">运动鞋</a></li>
				<li><a href="#">裤袜</a></li>
				<li><a href="#">书包</a></li>
				<li><a href="#">海竿</a></li>
				<li><a href="#">运动裤</a></li>
				<li><a href="#">腰带男</a></li>
				<li><a href="#">男T恤</a></li>
				<li><a href="#">乔丹4代</a></li>
				<li><a href="#">科比</a></li>
				<li><a href="#">詹姆斯</a></li>

				<li><a href="#">棒球服</a></li>
				<li><a href="#">男保暖裤</a></li>


			</ul>

			<div class="subNav  currentDd currentDt">女装/内衣</div>
			<ul class="navContent">

				<li><a href="#">男外套</a></li>



				<li><a href="#">男鞋</a></li>
				<li><a href="#">男裤</a></li>
				<li><a href="#">衬衫</a></li>
				<li><a href="#">手表</a></li>
				<li><a href="#">男卫衣</a></li>
				<li><a href="#">打底衫</a></li>
				<li><a href="#">山地车</a></li>
				<li><a href="#">男皮带</a></li>
				<li><a href="#">旅行箱</a></li>
				<li><a href="#">包</a></li>
				<li><a href="#">睡衣男</a></li>
				<li><a href="#">运动鞋</a></li>
				<li><a href="#">裤袜</a></li>
				<li><a href="#">书包</a></li>
				<li><a href="#">海竿</a></li>
				<li><a href="#">运动裤</a></li>
				<li><a href="#">腰带男</a></li>
				<li><a href="#">男T恤</a></li>
				<li><a href="#">男T恤</a></li>
			</ul>
			<div class="subNav">化妆品/个人护理</div>
			<ul class="navContent">
				<li><a href="#">男外套</a></li>



				<li><a href="#">男鞋</a></li>
				<li><a href="#">男裤</a></li>
				<li><a href="#">衬衫</a></li>
				<li><a href="#">手表</a></li>
				<li><a href="#">男卫衣</a></li>
				<li><a href="#">打底衫</a></li>
				<li><a href="#">山地车</a></li>
				<li><a href="#">男皮带</a></li>
				<li><a href="#">旅行箱</a></li>
				<li><a href="#">包</a></li>
				<li><a href="#">睡衣男</a></li>
				<li><a href="#">运动鞋</a></li>
				<li><a href="#">裤袜</a></li>
				<li><a href="#">书包</a></li>
				<li><a href="#">海竿</a></li>
				<li><a href="#">运动裤</a></li>
				<li><a href="#">腰带男</a></li>
				<li><a href="#">男T恤</a></li>
				<li><a href="#">男T恤</a></li>
			</ul>


			<div class="subNav">零食/茶酒</div>
			<ul class="navContent">
				<li><a href="#">男外套</a></li>



				<li><a href="#">男鞋</a></li>
				<li><a href="#">男裤</a></li>
				<li><a href="#">衬衫</a></li>
				<li><a href="#">手表</a></li>
				<li><a href="#">男卫衣</a></li>
				<li><a href="#">打底衫</a></li>
				<li><a href="#">山地车</a></li>
				<li><a href="#">男皮带</a></li>
				<li><a href="#">旅行箱</a></li>
				<li><a href="#">包</a></li>
				<li><a href="#">睡衣男</a></li>
				<li><a href="#">运动鞋</a></li>
				<li><a href="#">裤袜</a></li>
				<li><a href="#">书包</a></li>
				<li><a href="#">海竿</a></li>
				<li><a href="#">运动裤</a></li>
				<li><a href="#">腰带男</a></li>
				<li><a href="#">男T恤</a></li>
				<li><a href="#">男T恤</a></li>
			</ul>
		</div>
		<div class="subNav">手机数码</div>
		<ul class="navContent">
			<li><a href="#">男外套</a></li>



			<li><a href="#">男鞋</a></li>
			<li><a href="#">男裤</a></li>
			<li><a href="#">衬衫</a></li>
			<li><a href="#">手表</a></li>
			<li><a href="#">男卫衣</a></li>
			<li><a href="#">打底衫</a></li>
			<li><a href="#">山地车</a></li>
			<li><a href="#">男皮带</a></li>
			<li><a href="#">旅行箱</a></li>
			<li><a href="#">包</a></li>
			<li><a href="#">睡衣男</a></li>
			<li><a href="#">运动鞋</a></li>
			<li><a href="#">裤袜</a></li>
			<li><a href="#">书包</a></li>
			<li><a href="#">海竿</a></li>
			<li><a href="#">运动裤</a></li>
			<li><a href="#">腰带男</a></li>
			<li><a href="#">男T恤</a></li>
			<li><a href="#">男T恤</a></li>
		</ul>
	</div>

	<div id="rifght">
		<!-- 
 <table 
			cellpadding="8">
			
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
					
				</tr>
			</s:iterator>
		</table>
 -->
		<s:iterator value="#list" >
			<div id="showproduct"><s:a >
				<img id="img" alt="显示图片"
					src="<s:url action='showImages'><s:param name='name' value='uploadfile'></s:param></s:url>">
				<div id="market">
					价格:<s><s:property value="%{marketprice}"></s:property></s>
				</div>
				<div id="sell">
					促销价：
					<s:property value="%{sellprice}"></s:property>
				</div>
				
				<div id="productname">
					<s:property value="%{productname}"></s:property>
				</div>
				<div id="name">
					<s:a><u>Kevin旗舰店</u></s:a>
				</div>
			</s:a>
			</div>
			


		</s:iterator>

	</div>

</body>

</html>

