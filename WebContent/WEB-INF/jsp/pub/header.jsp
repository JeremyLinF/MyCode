<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/pub/include.jsp"%>
<!-- <ul id="globalNav">
<script type="text/javascript">
var url = document.URL;
var index="index";
if(url.indexOf("/news/")!=-1){
	index="news";
}
else if(url.indexOf("/clazz/")!=-1){
	index="clazz";
}
else if(url.indexOf("/source/")!=-1){
	index="source";
} 
else if(url.indexOf("/topic/")!=-1){
	index="topic";
} 
else if(url.indexOf("/master/")!=-1){
	index="master";
} 
if(index=="index"){
	document.write('<li class="active"><a href="<c:url value="/"/>"><span>网站首页</span></a></li>');
}
else{
	document.write('<li><a href="<c:url value="/"/>"><span>网站首页</span></a></li>');
}
if(index=="news"){
	document.write('<li id="topTabOn"><a href="<c:url value="/news/"/>"><span>校园新闻</span></a>'+
		'<ul class="dropdown-menu">'+
		'<li><a href="sidebar-right.html">Right Sidebar</a></li>'+
		'<li><a href="#">Dummy Link1</a></li>'+
		'<li><a href="#">Dummy Link2</a></li>'+
		'<li><a href="#">Dummy Link3</a></li>'+
	'</ul>'+
	'</li>');
}
else{
	document.write('<li><a href="<c:url value="/news/"/>"><span>校园新闻</span></a>'+
		'<ul class="dropdown-menu">'+
		'<li><a href="sidebar-right.html">Right Sidebar</a></li>'+
		'<li><a href="#">Dummy Link1</a></li>'+
		'<li><a href="#">Dummy Link2</a></li>'+
		'<li><a href="#">Dummy Link3</a></li>'+
	'</ul>'+
	'</li>');
}
if(index=="clazz"){
	document.write('<li id="topTabOn"><a href="<c:url value="/clazz/"/>"><span>课程中心</span></a></li>');
}
else{
	document.write('<li><a href="<c:url value="/clazz/"/>"><span>课程中心</span></a></li>');
}
if(index=="source"){
	document.write('<li id="topTabOn"><a href="<c:url value="/source/"/>"><span>资源下载</span></a></li>');
}
else{
	document.write('<li><a href="<c:url value="/source/"/>"><span>资源下载</span></a></li>');
}
if(index=="topic"){
	document.write('<li id="topTabOn"><a href="<c:url value="/topic/"/>"><span>互动交流</span></a></li>');
}
else{
	document.write('<li><a href="<c:url value="/topic/"/>"><span>互动交流</span></a></li>');
}
if(index=="master"){
	document.write('<li id="topTabOn"><a href="<c:url value="/master/"/>"><span>个人中心</span></a></li>');
}
else{
	document.write('<li><a href="<c:url value="/master/"/>"><span>个人中心</span></a></li>');
}
</script>
</ul> -->

<div class="container">
	<div class="navbar-header">
		<!-- Button for smallest screens -->
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".navbar-collapse">
			<span class="icon-bar"></span><span class="icon-bar"></span><span
				class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="index.jsp"> <img
			src="<%=request.getContextPath()%>/assets/images/logo.png"
			alt="Techro HTML5 template"></a>
	</div>
	<div class="navbar-collapse collapse">
		<ul class="nav navbar-nav pull-right mainNav">
			<li><a href="<c:url value="/"/>">网站首页</a></li>
			<li class="dropdown"><a href="<c:url value="/news/"/>"
				class="dropdown-toggle" data-toggle="dropdown">NEWS <b
					class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="<c:url value="/news/"/>">校园新闻</a></li>
					<%-- <c:forEach items="${menuList}" var="menu">
			<li><a href="<c:url value="/news/menu.do?id=${menu.id}"/>"><c:out value="${menu.name}" /></a></li>
			</c:forEach> --%>
					<li><a href="<c:url value="/news/menu.do?id=3"/>">校园动态</a></li>
					<li><a href="<c:url value="/news/menu.do?id=4"/>">校园风采</a></li>
				</ul></li>
			<li><a href="<c:url value="/clazz/"/>">课程中心</a></li>
			<li><a href="<c:url value="/topic/"/>">互动交流</a></li>
			<li><a href="portfolio.html">哈哈哈</a></li>
			<li class="dropdown"><a href="<c:url value="/source/"/>"
				class="dropdown-toggle" data-toggle="dropdown">Source<b
					class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="<c:url value="/source/"/>">资源下载</a></li>
					<%-- <c:forEach items="${menuList_new}" var="menu1">
				<li><a href="<c:url value="/source/menu1.do?id=${menu1.id}"/>"><c:out value="${menu1.name}" /></a></li>
				</c:forEach> --%>
					<li><a href="<c:url value="/source/menu.do?id=3"/>">Java基础</a></li>
					<li><a href="<c:url value="/source/menu.do?id=4"/>">CSS基础</a></li>
				</ul></li>
			<li><a href="<c:url value="/master/"/>">个人中心</a></li>
		</ul>
	</div>
	<!--/.nav-collapse -->
</div>
