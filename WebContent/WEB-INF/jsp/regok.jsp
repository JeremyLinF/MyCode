<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/pub/include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="UTF-8">
<head>
<title>注册成功</title>
<link href="<%=request.getContextPath()%>/css/prompts.css"
	rel="stylesheet" type="text/css" />
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
	</div>
	<header id="head" class="secondary">
	<div class="container">
		<div class="row">
			<div class="col-sm-1">
				<h1>Register</h1>
			</div>
		</div>
	</div>
	</header>

	<div id="center_all" class="main">
		<div class="u_management_bg">
			<div class="P_width">
				<div class="Showms">
					<dl class="top"></dl>
					<dl class="content">
						<dd class="content1">
							<div class="Pic">
								<img id="ImgRight"
									src="<f:message key="image_http_url"/>/images/P_Right.gif"
									style="border-width: 0px;" />
							</div>
							<div class="MS">
								<dl>
									<dt class="titWrong">成功信息</dt>
									<dd>
										<li>注册成功！</li>
									</dd>
								</dl>
							</div>
							<div class="clearbox"></div>
							<div class="BUT">
								<a id="LnkReturnUrl" href="<c:url value="/"/>">&lt;&lt;&nbsp;返回上一页</a>
							</div>
						</dd>
					</dl>
					<dl class="bottom"></dl>
					<dl class="Shadow"></dl>
				</div>
				<div class="clearbox"></div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/jsp/pub/footer.jsp"></jsp:include>
	</div>
</body>
<script
	src="http://ajax.useso.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
</html>
