<%@ page language="java" pageEncoding="utf-8"%>
<%@page import="com.classnet.util.page.WebUtil"%>
<%@ include file="/WEB-INF/jsp/pub/include.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0064)http://www.17sucai.com/preview/137615/2015-01-15/demo/index.html -->

<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<META content="IE=11.0000" http-equiv="X-UA-Compatible">
<html>
<head>
<META http-equiv="Content-Type" content="text/html; charset=utf-8">
<TITLE>登录页面</TITLE>
<SCRIPT src="js/jquery-1.9.1.min.js" type="text/javascript"></SCRIPT>

<STYLE>
body {
	background: #ebebeb;
	font-family: "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei",
		"\9ED1\4F53", Arial, sans-serif;
	color: #222;
	font-size: 12px;
}

* {
	padding: 0px;
	margin: 0px;
}

.top_div {
	background: #008ead;
	width: 100%;
	height: 400px;
}

.ipt {
	border: 1px solid #d3d3d3;
	padding: 10px 10px;
	width: 290px;
	border-radius: 4px;
	padding-left: 35px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow
		ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out
		.15s;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s
}

.ipt:focus {
	border-color: #66afe9;
	outline: 0;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgba(102, 175, 233, .6);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgba(102, 175, 233, .6)
}

.u_logo {
	background: url("images/username.png") no-repeat;
	padding: 10px 10px;
	position: absolute;
	top: 43px;
	left: 40px;
}

.p_logo {
	background: url("images/password.png") no-repeat;
	padding: 10px 10px;
	position: absolute;
	top: 12px;
	left: 40px;
}

a {
	text-decoration: none;
}

.tou {
	background: url("images/tou.png") no-repeat;
	width: 97px;
	height: 92px;
	position: absolute;
	top: -87px;
	left: 140px;
}

.left_hand {
	background: url("images/left_hand.png") no-repeat;
	width: 32px;
	height: 37px;
	position: absolute;
	top: -38px;
	left: 150px;
}

.right_hand {
	background: url("images/right_hand.png") no-repeat;
	width: 32px;
	height: 37px;
	position: absolute;
	top: -38px;
	right: -64px;
}

.initial_left_hand {
	background: url("images/hand.png") no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -12px;
	left: 100px;
}

.initial_right_hand {
	background: url("images/hand.png") no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -12px;
	right: -112px;
}

.left_handing {
	background: url("images/left-handing.png") no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -24px;
	left: 139px;
}

.right_handinging {
	background: url("images/right_handing.png") no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -21px;
	left: 210px;
}
</STYLE>

<SCRIPT type="text/javascript">
$(function(){
	//得到焦点
	$("#password").focus(function(){
		$("#left_hand").animate({
			left: "150",
			top: " -38"
		},{step: function(){
			if(parseInt($("#left_hand").css("left"))>140){
				$("#left_hand").attr("class","left_hand");
			}
		}}, 2000);
		$("#right_hand").animate({
			right: "-64",
			top: "-38px"
		},{step: function(){
			if(parseInt($("#right_hand").css("right"))> -70){
				$("#right_hand").attr("class","right_hand");
			}
		}}, 2000);
	});
	//失去焦点
	$("#password").blur(function(){
		$("#left_hand").attr("class","initial_left_hand");
		$("#left_hand").attr("style","left:100px;top:-12px;");
		$("#right_hand").attr("class","initial_right_hand");
		$("#right_hand").attr("style","right:-112px;top:-12px");
	});
});
</SCRIPT>
</head>


<body>
	<DIV class="top_div"></DIV>
	<DIV
		style="background: rgb(255, 255, 255); margin: -100px auto auto; border: 1px solid rgb(231, 231, 231); border-image: none; width: 400px; height: 200px; text-align: center;">
		<DIV style="width: 165px; height: 96px; position: absolute;">
			<DIV class="tou"></DIV>
			<DIV class="initial_left_hand" id="left_hand"></DIV>
			<DIV class="initial_right_hand" id="right_hand"></DIV>
		</DIV>
		<div class="left_box">
			<!-- <div id="Con_11" > -->
			<form action="<c:url value='/j_acegi_security_check'/>" method="post"
				style="margin: 0">
				<div id="LoginFrom" class="Login_ajax">
					<ul style="line-height: 30px;">
						<% 
			if(WebUtil.getLoginUser()!=null){
		%>
						<h2>欢迎您:</h2>
						<h3>
							<a style="padding-left: 20px;"><%=WebUtil.getLoginUser() %></a>
						</h3>
						<li style="text-align: center">
							<% 
					if(WebUtil.isAdmin()){
				%> <a href="<c:url value="/admin"/>">进入后台管理</a> <%
					}
					else{
				%> <a href="<c:url value="/master/"/>">进入用户中心</a> <%		
					}
				%> &nbsp;|&nbsp; <a href="<c:url value="/logout"/>">退出登录</a>
						</li>
						<%
			}
			else{
		%>
						<!-- <P style="padding: 30px 0px 10px; position: relative;"><SPAN class="u_logo"></SPAN>
					<input class="ipt" name="j_username" type="text" placeholder="请输入用户名" style="width: 125px;" />
				</P> -->
						<!-- <li>密&nbsp;&nbsp;&nbsp;&nbsp;码：<input name="j_password" type="password" class="inputtext" style="width: 125px;" /></li> -->

						<%-- <li id="loginButton">
					<a href="<c:url value="/reg.do?m=toreg"/>">注册</a>&nbsp;&nbsp;
					<input type="submit" value="登　录" class="inputbutton" />
				</li> --%>

						<P style="padding: 30px 0px 10px; position: relative;">
							<SPAN class="u_logo"></SPAN> <INPUT class="ipt" name="j_username"
								type="text" placeholder="请输入用户名或邮箱" value="">
						</P>

						<P style="position: relative;">
							<SPAN class="p_logo"></SPAN> <INPUT class="ipt" name="j_password"
								id="password" type="password" placeholder="请输入密码" value="">
						</P>


						<DIV
							style="height: 50px; line-height: 50px; margin-top: 30px; border-top-color: rgb(231, 231, 231); border-top-width: 1px; border-top-style: solid;">
							<P style="margin: 0px 35px 20px 45px;">
								<SPAN style="float: left;"><A
									style="color: rgb(204, 204, 204);" href="#">忘记密码?</A></SPAN> <SPAN
									style="float: right;"><A
									style="color: rgb(204, 204, 204); margin-right: 10px;"
									href="<c:url value="/reg.do?m=toreg"/>">注册</A> <input
									type="submit" value="登　录" class="inputbutton" /> </SPAN>
							</P>
						</DIV>
				</div>
				<%
			}
		%>
			</form>
		</div>
	</div>

</body>
<script type="text/javascript">
function changeimagekey(){
	document.getElementById("imagekey").src="<c:url value="/imagekey.jsp?d="/>"+new Date().getTime();
}
</script>
</html>