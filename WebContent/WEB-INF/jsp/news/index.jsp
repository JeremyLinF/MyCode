<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/pub/include.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="UTF-8">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description"
		content="Learn is a modern and fully responsive Template by WebThemez.">
		<meta name="author" content="webThemez.com">
			<title>新闻</title>

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
				<h1>New</h1>
			</div>
		</div>
	</div>
	</header>

	<div id="center_all" class="main">
		<div id="main_bg">
			<div id="main_right">
				<div id="main_right_box">
					<!-- 网站位置导航信息开始 -->
					<div class="r_navigation">
						您现在的位置： <a href="<c:url value="/"/>"><f:message
								key="site_name" /></a>&gt;&gt; <a href="<c:url value="/news"/>"><span
							class="current">校园新闻</span> </a>
					</div>
					<!-- 网站位置导航信息结束 -->
					<div class="c_spacing"></div>
					<div id="column1">
						<div class="newsList">
							<h3>校园新闻</h3>
							<ul class="listStyle1">
								<c:forEach items="${newsTJList}" var="newstj">
									<li><a
										href="<c:url value="/news/see.do?id=${newstj.id}"/>"
										target="_blank"><c:out value="${newstj.title}" /></a>
									<f:formatDate value="${newstj.pubtime}" pattern="MM-dd" /></li>
								</c:forEach>
							</ul>
						</div>
						<div id="custom_column_41605183" class="panel">
							<ul class="panel_head">
								<span>休闲时刻</span>
							</ul>
							<ul class="panel_body">
								<ul class="panel_head">
									<font style="padding-left: 25px">学累了吗？用鼠标逗逗它吧^_^</font>
								</ul>
								<object type="application/x-shockwave-flash"
									style="outline: none;"
									data="http://cdn.abowman.com/widgets/hamster/hamster.swf?"
									width="236" height="185">
									<param name="movie"
										value="http://cdn.abowman.com/widgets/hamster/hamster.swf?">
										<param name="AllowScriptAccess" value="always">
											<param name="wmode" value="opaque">
								</object>
								<br> <!--
									<embed src="http://v.65dj.com/wailian/84791c997d8c55023dad0d5690e48c28.mp3" width="240" height="50" autostart="true" loop="1" hidden="”true”" id="MediaPlayer" name="MediaPlayer">-->
							</ul>
						</div>
						<div class="clearbox"></div>
					</div>
					<div class="c_spacing"></div>
					<div class="clearbox"></div>
					<div class="c_spacing"></div>



					<div class="childclass_main">
						<!-- 栏目循环列表开始 -->
						<c:forEach items="${menuList}" var="mm">
							<div class="childclass_main_box">
								<div class="childclass_title">
									<div class="more">
										<a href="<c:url value="/news/menu.do?id=${mm.id}"/>">[更多]</a>
									</div>
									<a href="" target="_blank"><c:out value="${mm.name}" /></a>
								</div>
								<div class="childclass_content">
									<%-- <ul class="thumbListStlye1">
												<li>
													<div class="pe_u_thumb">
														<a href="<c:url value="/news/see.do?id=${mm.id}"/>" target="_blank"><img src="<f:message key="upload_http_path"/>/images/${mm.newsEntity.img}" width="95" border="0" height="65" /></a>
													</div> 
													<div class="pe_u_thumb_Intro">
														<h3><a href="<c:url value="/news/see.do?id=${mm.newsEntity.id}"/>" target="_blank"><c:out value="${mm.newsEntity.title}"/></a></h3>
														<div class="intro">
															<c:out value="${fn:substring(mm.newsEntity.content,0,30)}"></c:out>...
														</div>
													</div>
												</li>
												<div class="clearbox"></div>
											</ul> --%>
									<ul class="listStyle1">
										<c:forEach items="${mm.newsList}" var="mmnews">
											<li><a
												href="<c:url value="/news/see.do?id=${mmnews.id}"/>"
												target="_blank"><c:out value="${mmnews.title}" /></a></li>
											<div class="clearbox"></div>
										</c:forEach>
									</ul>
									<div class="clearbox"></div>
								</div>
								<div class="childclass_bot"></div>
							</div>
						</c:forEach>

						<!-- 栏目循环列表结束 -->
						<div class="clearbox"></div>
					</div>
				</div>
			</div>
			<div id="sideBar">

				<div class="left_box">
					<dl>
						<dt>
							<em>栏目列表</em>
						</dt>
						<dd>
							<ul class="subjectList">
								<c:forEach items="${menuList}" var="menu">
									<li><a href="<c:url value="/news/menu.do?id=${menu.id}"/>"><c:out
												value="${menu.name}" /></a></li>
								</c:forEach>
								<div class="clearbox"></div>
							</ul>
						</dd>
					</dl>
				</div>


				<div class="left_box">
					<dl>
						<dt>
							<em>最新文章</em>
						</dt>
						<dd>
							<ul>
								<c:forEach items="${newnewsList}" var="nn">
									<li><a href="<c:url value="/news/see.do?id=${nn.id}"/>"><c:out
												value="${nn.title}" /></a></li>
								</c:forEach>
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