<%@ page language="java" pageEncoding="utf-8"%>
<%@include file="/WEB-INF/jsp/pub/include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="UTF-8">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description"
		content="Learn is a modern and fully responsive Template by WebThemez.">
		<meta name="author" content="webThemez.com">
			<title>用户登录</title>
			<link rel="favicon" href="assets/images/favicon.png">
				<link rel="stylesheet" media="screen"
					href="http://fonts.useso.com/css?family=Open+Sans:300,400,700">
					<link rel="stylesheet" href="assets/css/bootstrap.min.css">
						<link rel="stylesheet" href="assets/css/font-awesome.min.css">
							<!-- Custom styles for our template -->
							<link rel="stylesheet" href="assets/css/bootstrap-theme.css"
								media="screen">
								<link rel="stylesheet" type="text/css"
									href="assets/css/da-slider.css" />
								<link rel="stylesheet" href="assets/css/style.css">
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
				<h1>Login</h1>
			</div>
		</div>
	</div>
	</header>

	<div id="center_all" class="main">
		<div class="u_management_bg">
			<form action="<c:url value='j_acegi_security_check'/>" method="post">
				<table width="70%" align="right" style="line-height: 30px;">
					<c:if test="${not empty param.login_error}">
						<tr>
							<td colspan="2" align="left"><font color="red">
									用户名或密码错误</font></td>
						</tr>
					</c:if>
					<tr>
						<td width="50">用户名:</td>
						<td><input type='text' name='j_username'
							<c:if test="${not empty param.login_error}">value='<c:out value="${ACEGI_SECURITY_LAST_USERNAME}"/>'</c:if> /></td>
					</tr>
					<tr>
						<td>密码:</td>
						<td><input type='password' name='j_password' /></td>
					</tr>
					<tr>
						<td colspan='2'><input name="submit" type="submit" value="登录" />
							<input name="reset" type="reset" value="重置" /></td>
					</tr>
				</table>
			</form>
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
