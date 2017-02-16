<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/pub/include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="UTF-8">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description"
		content="Learn is a modern and fully responsive Template by WebThemez.">
		<meta name="author" content="webThemez.com">
			<title>资源下载</title>
			<link href="<%=request.getContextPath()%>/css/default.css"
				rel="stylesheet" type="text/css" />
			<link href="<%=request.getContextPath()%>/css/article.css"
				rel="stylesheet" type="text/css" />
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
		<div><jsp:include page="/WEB-INF/jsp/pub/header.jsp"></jsp:include></div>
		<!--头部定义结束-->
	</div>
	<header id="head" class="secondary">
	<div class="container">
		<div class="row">
			<div class="col-sm-1">
				<h1>Source</h1>
			</div>
		</div>
	</div>
	</header>

	<div id="center_all" class="main">
		<div id="main_bg">
			<div id="main_right">
				<div id="main_right_box">
					<!-- 右侧二列开始 -->
					<div id="r_main">
						<div class="r_content">
							<dl>
								<dt>热点文章</dt>
								<dd>
									<ul>
										<c:forEach items="${newsList}" var="news">
											<li><a
												href="<c:url value="/news/see.do?id=${news.id}"/>"><c:out
														value="${news.title}"></c:out></a></li>
										</c:forEach>
									</ul>
								</dd>
							</dl>
						</div>
						<div class="c_spacing"></div>
						<div class="r_content">
							<dl>
								<dt>推荐课程</dt>
								<dd>
									<ul>
										<c:forEach items="${clazzList}" var="clazz">
											<li><a
												href="<c:url value="/clazz/view.do?id=${clazz.id}"/>"><c:out
														value="${clazz.name}"></c:out></a></li>
										</c:forEach>
									</ul>
								</dd>
							</dl>
						</div>
					</div>
					<div class="c_main">
						<!-- 网站位置导航信息开始 -->
						<div class="r_navigation">
							您现在的位置： <a href="<c:url value="/"/>"><f:message
									key="site_name" /></a>&gt;&gt; <a href="<c:url value="/source/"/>"><span
								class="current">资源下载</span></a>
						</div>
						<!-- 网站位置导航信息结束 -->
						<div class="c_spacing"></div>
						<div class="centerAD">
							<img src="<f:message key="image_http_url"/>/images/centerAD.jpg" />
						</div>
						<!-- 父栏目列表信息列表开始 -->

						<div class="classlist_box">
							<!-- 栏目循环列表开始 -->
							<c:forEach items="${menuList}" var="menu">
								<div class="classBox">
									<h4>
										<c:out value="${menu.name}" />
									</h4>
									<ul class="listStyle1">
										<c:forEach items="${menu.sourceList}" var="source">
											<li><a
												href="<f:message key="upload_http_path"/>/files/${source.filename}"><c:out
														value="${source.name}" />[<c:out
														value="${source.fileSize}" />]</a>[<f:formatDate
													value="${source.pubtime}" pattern="MM-dd" />]</li>
										</c:forEach>
									</ul>
									<a class="more"
										href="<c:url value="/source/menu.do?id=${menu.id}"/>">点击这里查看更多内容&gt;&gt;</a>
								</div>
							</c:forEach>
							<!-- 父栏目列表信息列表结束 -->
						</div>
						<!-- 栏目循环列表结束 -->
					</div>
				</div>
			</div>
			<div id="sideBar">
				<%-- <jsp:include page="/WEB-INF/jsp/userbox.jsp"></jsp:include> --%>
				<div class="left_box">
					<dl>
						<dt>
							<em>栏目列表</em>
						</dt>
						<dd>
							<ul class="subjectList">
								<c:forEach items="${menuList}" var="menu">
									<li><a
										href="<c:url value="/source/menu.do?id=${menu.id}"/>"><c:out
												value="${menu.name}" /></a></li>
								</c:forEach>
								<div class="clearbox"></div>
							</ul>
						</dd>
					</dl>
				</div>
			</div>
		</div>
	</div>
	<div class="clearbox"></div>
	<jsp:include page="/WEB-INF/jsp/pub/footer.jsp"></jsp:include>

</body>
<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
<script
	src="http://ajax.useso.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
</html>
