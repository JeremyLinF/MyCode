<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/pub/include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="UTF-8">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网站首页</title>
<%-- <link href="<%=request.getContextPath()%>/css/index.css"
			rel="stylesheet" type="text/css" />  --%>
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
	<!--头部定义结束-->

	<!-- Header -->
	<header id="head">
	<div class="container">
		<div class="banner-content">
			<div id="da-slider" class="da-slider">
				<div class="da-slide">
					<h2>Educational Website</h2>
					<p>Amazing free responsive website for free, enjoy!!!</p>
					<div class="da-img"></div>
				</div>
				<div class="da-slide">
					<h2>Online Education</h2>
					<p>Bootstrap is a powerful mobile first front-end framework..</p>
					<div class="da-img"></div>
				</div>
				<div class="da-slide">
					<h2>Super Success</h2>
					<p>HTML5 is a markup language used for structuring and
						presenting Web.</p>
					<div class="da-img"></div>
				</div>
			</div>
		</div>
	</div>
	</header>
	<!-- /Header -->

	<section class="container"> <!--中部内容定义开始-->
	<div class="row">
		<div class="col-md-4">
			<div class="title-box clearfix ">
				<h2 class="title-box_primary">Java介紹</h2>
			</div>
			<p>
				<span>Perspiciatis unde omnis iste natus error sit
					voluptatem. Cum sociis natoque penatibus et magnis dis parturient
					montes ascetur ridiculus musull dui.</span>
			</p>
			<p>Lorem ipsumulum aenean noummy endrerit mauris. Cum sociis
				natoque penatibus et magnis dis parturient montes ascetur ridiculus
				mus. Null dui. Fusce feugiat malesuada odio.</p>
			<a href="" title="read more" class="btn-inline " target="_self">read
				more</a>
		</div>

		<div class="col-md-4">
			<div class="title-box clearfix ">
				<h2 class="title-box_primary">最新通知</h2>
			</div>
			<div class="list styled custom-list">
				<ul class="listStyle1">
					<c:forEach items="${newsTJList}" var="newstj">
						<li><a href="<c:url value="/news/see.do?id=${newstj.id}"/>"
							target="_blank"><c:out value="${newstj.title}" /></a>
						<f:formatDate value="${newstj.pubtime}" pattern="MM-dd" /></li>
					</c:forEach>
				</ul>
			</div>
		</div>

		<div class="col-md-4">
			<div class="title-box clearfix ">
				<h2 class="title-box_primary">課程中心</h2>
			</div>
			<dl>
				<%-- <dt>
					<ul class="colChildNav">
						<c:forEach items="${clazzMenuList}" var="clazzmenu">
						<li><a href="<c:url value="/clazz/search.do?pmId=${clazzmenu.id}"/>"><c:out value="${clazzmenu.name}"/></a></li>
						</c:forEach>
					</ul>
				</dt> --%>
				<dd>
					<ul class="thumbListStlye2">
						<c:forEach items="${tjClazzList}" var="tjc">
							<li>
								<div class="pe_u_thumb">
									<a href="<c:url value="/clazz/view.do?id=${tjc.id}"/>"
										target="_blank"><img
										src="<f:message key="upload_http_path"/>/images/${tjc.img}"
										width="160" height="120" border="0" /></a>
								</div>
								<div class="pe_u_thumb_title">
									<a href="<c:url value="/clazz/view.do?id=${tjc.id}"/>"
										target="_blank"><c:out value="${tjc.name}" /></a> <br />
								</div>
							</li>
						</c:forEach>
					</ul>
					<ul class="listStyle1">
						<c:forEach items="${newClazzList}" var="newclazz">
							<li><a
								href="<c:url value="/clazz/view.do?id=${newclazz.id}"/>"
								target="_blank"><c:out value="${newclazz.name}" /></a>
							<f:formatDate value="${newclazz.pubtime}" pattern="MM-dd" /></li>
						</c:forEach>
					</ul>
					<div class="clearbox"></div>
				</dd>
			</dl>
		</div>
	</section>
	<!--中部内容定义结束-->

	<section class="news-box">
	<div class="container">
		<h2>
			<span>Latest News</span>
		</h2>
		<div class="row">
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
				<div class="newsBox">
					<div class="thumbnail">
						<figure>
						<time datetime="2016-01-01">初级教程</time>
						<img src="assets/images/news.jpg" alt=""></figure>
						<div class="caption maxheight2">
							<div class="box_inner">
								<%-- <jsp:forward page="http://www.baidu.com">Lorem ipsum dolor sit amet conse ctetu eiusmod.</jsp:forward> --%>
								<a href="http://localhost:8080/classnet/clazz/search.do?ftId=1"
									target="_blank">Lorem ipsum dolor sit amet conse ctetu
									eiusmod.</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
				<div class="newsBox">
					<div class="thumbnail">
						<figure>
						<time datetime="2016-01-01">中级教程</time>
						<img src="assets/images/news2.jpg" alt=""></figure>
						<div class="caption maxheight2">
							<div class="box_inner">
								<a href="http://localhost:8080/classnet/clazz/search.do?ftId=2"
									target="_blank">Lorem ipsumulum aenean noummy endrerit
									mauris.</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
				<div class="newsBox">
					<div class="thumbnail">
						<figure>
						<time datetime="2016-01-01">高级教程</time>
						<img src="assets/images/news3.jpg" alt=""></figure>
						<div class="caption maxheight2">
							<div class="box_inner">
								<a href="http://localhost:8080/classnet/clazz/search.do?ftId=3"
									target="_blank">Pariatur excepteur sint occaummy endrerit
									mauris.</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
				<div class="newsBox">
					<div class="thumbnail">
						<figure>
						<time datetime="2016-01-01">项目源码下载</time>
						<img src="assets/images/news4.jpg" alt=""></figure>
						<div class="caption maxheight2">
							<div class="box_inner">
								<a href="http://localhost:8080/classnet/source/menu.do?id=3"
									target="_blank">Magnis dis parturient montes ascetur
									ridiculus mus.</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<div class="clearbox"></div>
	<jsp:include page="/WEB-INF/jsp/pub/footer.jsp"></jsp:include>
	</div>
</body>

<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
<script src="assets/js/modernizr-latest.js"></script>
<script
	src="http://ajax.useso.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.cslider.js"></script>
<script src="assets/js/custom.js"></script>

</html>
