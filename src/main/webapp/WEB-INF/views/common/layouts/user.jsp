<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/taglib.jsp"%>

<!--  MASTER LAYOUT -->

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">

<title><dec:title default="master layout" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap styles -->
<link href="<c:url value='/assets/user/css/bootstrap.css/'/>"
	rel="stylesheet" />
<!-- Customize styles -->
<link href="<c:url value='/assets/user/style.css'/>" rel="stylesheet" />
<!-- font awesome styles -->
<link
	href="<c:url value='/assets/user/font-awesome/css/font-awesome.css'/>"
	rel="stylesheet">


<!-- Favicons -->
<link rel="shortcut icon"
	href="<c:url value='/assets/user/ico/favicon.ico'/>">
	<!--  Header  -->
	<dec:head/>
</head>
<body>
	<!-- 
	Upper Header Section 
-->
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="topNav">
			<div class="container">
				<div class="alignR">
					<div class="pull-left socialNw">
						<a href="#"><span class="icon-twitter"></span></a> <a href="#"><span
							class="icon-facebook"></span></a> <a href="#"><span
							class="icon-youtube"></span></a> <a href="#"><span
							class="icon-tumblr"></span></a>
					</div>
					<a class="active" href="<c:url value='/trang-chu/'/>"> <span class="icon-home"></span>
						Trang chủ
					</a> 

					<c:choose>
						<c:when test="${userInfo != null }">
							<a href="<c:url value='/quan-tri/'/>" class="icon-user"> ${userInfo.user_name }</a>
							<a href="<c:url value='/dang-xuat'/>"> <span class="icon-edit"> </span> 
							Đăng xuất </a>
						</c:when>
						<c:otherwise>
							<a href="<c:url value='/dang-ky'/>"><span class="icon-edit"> </span> 
							Đăng ký </a>
						</c:otherwise>
					</c:choose>		

					<a href="contact.html">
					<span class="icon-envelope"></span> Contact us</a> 
					<a href="<c:url value='/gio-hang'/>">
					<span class="icon-shopping-cart"></span> ${totalQuanty } Item - <span
						class="badge badge-warning"><fmt:formatNumber value="${totalPrice }" type="number"/> ₫</span></a>
				</div>
			</div>
		</div>
	</div>

	<!--
Lower Header Section 
-->
	<div class="container">
		<div id="gototop"></div>
		<!-- header -->
		<%@ include file="/WEB-INF/views/common/layouts/user/header.jsp"%>
		<!--
Navigation Bar Section 
-->
		<div class="navbar">
			<div class="navbar-inner">
				<div class="container">
					<a data-target=".nav-collapse" data-toggle="collapse"
						class="btn btn-navbar"> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
					</a>
					<div class="nav-collapse">
						<ul class="nav">
							<c:forEach var="item" items="${menu_list }" varStatus="index">
								<c:if test="${index.first }">
									<li class="active">
								</c:if>
								<c:if test="${not index.first }">
									<li class="">
								</c:if>
								<a href="<c:url value='${item.menu_url }'/>">${item.menu_name }</a>
								</li>
							</c:forEach>
						</ul>
						<form action="#" class="navbar-search pull-left">
							<input type="text" placeholder="Search"
								class="search-query span2">
						</form>
						<ul class="nav pull-right">
							<li class="dropdown"><a data-toggle="dropdown"
								class="dropdown-toggle" href="#"><span class="icon-lock"></span>
									Login <b class="caret"></b></a>
								<div class="dropdown-menu">
									<form class="form-horizontal loginFrm">
										<div class="control-group">
											<input type="text" class="span2" id="inputEmail"
												placeholder="Email">
										</div>
										<div class="control-group">
											<input type="password" class="span2" id="inputPassword"
												placeholder="Password">
										</div>
										<div class="control-group">
											<label class="checkbox"> <input type="checkbox">
												Remember me
											</label>
											<button type="submit" class="shopBtn btn-block">Sign
												in</button>
										</div>
									</form>
								</div></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- 
Body Section 
-->
		<dec:body />
		<!-- 
Clients 
-->
		<section class="our_client">
			<hr class="soften" />
			<h4 class="title cntr">
				<span class="text">Manufactures</span>
			</h4>
			<hr class="soften" />
			<div class="row">
				<div class="span2">
					<a href="#"><img alt="" src="assets/img/1.png"></a>
				</div>
				<div class="span2">
					<a href="#"><img alt="" src="assets/img/2.png"></a>
				</div>
				<div class="span2">
					<a href="#"><img alt="" src="assets/img/3.png"></a>
				</div>
				<div class="span2">
					<a href="#"><img alt="" src="assets/img/4.png"></a>
				</div>
				<div class="span2">
					<a href="#"><img alt="" src="assets/img/5.png"></a>
				</div>
				<div class="span2">
					<a href="#"><img alt="" src="assets/img/6.png"></a>
				</div>
			</div>
		</section>

		<!--
Footer
-->
		<%@ include file="/WEB-INF/views/common/layouts/user/footer.jsp"%>
		<!-- /container -->

		<div class="copyright">
			<div class="container">
				<p class="pull-right">
					<a href="#"><img src="assets/img/maestro.png" alt="payment"></a>
					<a href="#"><img src="assets/img/mc.png" alt="payment"></a> <a
						href="#"><img src="assets/img/pp.png" alt="payment"></a> <a
						href="#"><img src="assets/img/visa.png" alt="payment"></a> <a
						href="#"><img src="assets/img/disc.png" alt="payment"></a>
				</p>
				<span>Copyright &copy; 2013<br> bootstrap ecommerce
					shopping template
				</span>
			</div>
		</div>
		<a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="<c:url value='/assets/user/js/jquery.js'/>"></script>
		<script src="<c:url value='/assets/user/js/bootstrap.min.js'/>"></script>
		<script
			src="<c:url value='/assets/user/js/jquery.easing-1.3.min.js'/>"></script>
		<script
			src="<c:url value='/assets/user/js/jquery.scrollTo-1.4.3.1-min.js'/>"></script>
		<script src="<c:url value='/assets/user/js/shop.js'/>"></script>
		<dec:getProperty property="page.script" />
</body>
</html>
