<%@ include file="/WEB-INF/views/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<header id="header">
	<div class="row">
		<div class="span4">
			<h1>
				<a class="logo" href="<c:url value='/trang-chu/'/>"><span>Twitter Bootstrap
						ecommerce template</span> <img
					src="<c:url value='/assets/user/img/logo-bootstrap-shoping-cart.png'/>"
					alt="bootstrap sexy shop"> </a>
			</h1>
		</div>
		<div class="span4">
			<div class="offerNoteWrapper">
				<h1 class="dotmark">
					<i class="icon-cut"></i> Twitter Bootstrap shopping cart HTML
					template is available @ $14
				</h1>
			</div>
		</div>
		<div class="span4 alignR">
			<p>
				<br> <strong> Support (24/7) : 0800 1234 678 </strong><br>
				<br>
			</p>
			<span class="btn btn-mini">${totalQuanty } <span
				class="icon-shopping-cart"></span></span> <span
				class="btn btn-warning btn-mini">$</span> <span class="btn btn-mini">&pound;</span>
			<span class="btn btn-mini">&euro;</span>
		</div>
	</div>
</header>