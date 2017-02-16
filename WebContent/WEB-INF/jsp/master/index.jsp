<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/pub/include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="UTF-8">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<%=request.getContextPath()%>/css/default.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/css/user.css" rel="stylesheet"
	type="text/css" />
<title>会员中心</title>
<link rel="favicon"
	href="<%=request.getContextPath()%>/assets/images/favicon.png">
	<link rel="stylesheet" media="screen"
		href="http://fonts.useso.com/css?family=Open+Sans:300,400,700">
		<link rel="stylesheet"
			href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css">
			<link rel="stylesheet"
				href="<%=request.getContextPath()%>/assets/css/font-awesome.min.css">
				<!-- Custom styles for our template -->
				<link rel="stylesheet"
					href="<%=request.getContextPath()%>/assets/css/bootstrap-theme.css"
					media="screen">
					<link rel="stylesheet"
						href="<%=request.getContextPath()%>/assets/css/style.css">
</head>
<body>
	<div class="navbar navbar-inverse">
		<!--头部定义开始-->
		<jsp:include page="/WEB-INF/jsp/pub/header.jsp"></jsp:include>
		<!--头部定义结束-->
	</div>
	<header id="head" class="secondary">
	<div class="container">
		<div class="row">
			<div class="col-sm-1">
				<h1>Master</h1>
			</div>
		</div>
	</div>
	</header>

	<div id="center_all" class="main">
		<div id="main_bg">
			<div id="main_right">
				<div id="main_right_box">
					<div class="r_navigation">
						您现在的位置： <a href="<c:url value="/"/>"><f:message
								key="site_name" /> </a>&gt;&gt; <a href="<c:url value="/master/"/>">会员中心</a>
					</div>
					<div class="c_spacing"></div>
					<div class="u_form1">
						<div style="text-align: center">
							<table width="100%" border="0" cellpadding="0" cellspacing="0">
								<tr align="center">
									<td id="TabTitle0" class="titlemouseover">会员信息</td>
								</tr>
							</table>
							<table width="100%" border="0" cellpadding="5" cellspacing="1"
								class="border" style="text-align: left; line-height: 30px;">
								<tr>
									<td align="right" width="20%">用户名:</td>
									<td align="left"><c:out value="${userEntity.username}" />
									</td>
								</tr>
								<tr>
									<td align="right">邮箱:</td>
									<td align="left"><c:out value="${userEntity.email}" /></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
			<!-- 我的控制菜单开始 -->
			<div id="main_left">
				<dl>
					<dt></dt>
					<dd>
						<div id="mg_user_left">
							<ul>
								<li id="menu_1"><a href=#>信息管理</a></li>
							</ul>
						</div>
						<!-- 我的控制菜单开结束 -->
						<div id="mg_user_right">
							<jsp:include page="left.jsp" />
						</div>
						<div class="clearbox"></div>
						<!-- 用户快捷导航结束 -->
					</dd>
				</dl>
				<div class="clearbox"></div>
			</div>
			<div class="clearbox"></div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/jsp/pub/footer.jsp"></jsp:include>

</body>
<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
<script
	src="http://ajax.useso.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
</html>
