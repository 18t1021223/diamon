<%@ include file="/WEB-INF/views/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>Đăng ký tài khoản</title>
</head>
<body>
	<!-- 
Body Section 
-->
	<div class="row">
		<div id="sidebar" class="span3">
			<div class="well well-small">
				<ul class="nav nav-list">
					<li><a href="products.html"><span
							class="icon-chevron-right"></span>Fashion</a></li>
					<li><a href="products.html"><span
							class="icon-chevron-right"></span>Watches</a></li>
					<li><a href="products.html"><span
							class="icon-chevron-right"></span>Fine Jewelry</a></li>
					<li><a href="products.html"><span
							class="icon-chevron-right"></span>Fashion Jewelry</a></li>
					<li><a href="products.html"><span
							class="icon-chevron-right"></span>Engagement & Wedding</a></li>
					<li><a href="products.html"><span
							class="icon-chevron-right"></span>Men's Jewelry</a></li>
					<li><a href="products.html"><span
							class="icon-chevron-right"></span>Vintage & Antique</a></li>
					<li><a href="products.html"><span
							class="icon-chevron-right"></span>Loose Diamonds </a></li>
					<li><a href="products.html"><span
							class="icon-chevron-right"></span>Loose Beads</a></li>
					<li><a href="products.html"><span
							class="icon-chevron-right"></span>See All Jewelry & Watches</a></li>
					<li style="border: 0">&nbsp;</li>
					<li><a class="totalInCart" href="cart.html"><strong>Total
								Amount <span class="badge badge-warning pull-right"
								style="line-height: 18px;">$448.42</span>
						</strong></a></li>
				</ul>
			</div>

			<div class="well well-small alert alert-warning cntr">
				<h2>50% Discount</h2>
				<p>
					only valid for online order. <br>
					<br>
					<a class="defaultBtn" href="#">Click here </a>
				</p>
			</div>
			<div class="well well-small">
				<a href="#"><img src="assets/img/paypal.jpg"
					alt="payment method paypal"></a>
			</div>

			<a class="shopBtn btn-block" href="#">Upcoming products <br>
			<small>Click to view</small></a> <br> <br>
			<ul class="nav nav-list promowrapper">
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> QUICK
							VIEW</a> <img src="assets/img/bootstrap-ecommerce-templates.png"
							alt="bootstrap ecommerce templates">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">VIEW</a> <span
									class="pull-right">$22.00</span>
							</h4>
						</div>
					</div>
				</li>
				<li style="border: 0">&nbsp;</li>
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> QUICK
							VIEW</a> <img src="assets/img/shopping-cart-template.png"
							alt="shopping cart template">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">VIEW</a> <span
									class="pull-right">$22.00</span>
							</h4>
						</div>
					</div>
				</li>
				<li style="border: 0">&nbsp;</li>
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> QUICK
							VIEW</a> <img src="assets/img/bootstrap-template.png"
							alt="bootstrap template">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">VIEW</a> <span
									class="pull-right">$22.00</span>
							</h4>
						</div>
					</div>
				</li>
			</ul>

		</div>
		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="<c:url value='/trang-chu/'/>">Trang chủ</a> <span class="divider">/</span></li>
				<li class="active">Đăng nhập</li>
			</ul>
			<h3>Đăng nhập</h3>
			<hr class="soft" />

			<div class="row">
				<div class="span4">
					<div class="well">
						<h5>Tạo tài khoản</h5>
						<br /> Enter your e-mail address to create an account.<br />
						<br />
						<br />
						<form:form action="dang-ky" modelAttribute="user" method="post">
							<div class="control-group">
								<label class="control-label" for="inputEmail">E-mail
									address</label>
								<div class="controls">			
									<form:input path="user_email" type='email' class="span3" placeholder="Email"/>
									<form:errors path="user_email"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputEmail">Mật khẩu</label>
								<div class="controls">			
									<form:input path="user_password" type='password' class="span3" placeholder="password"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputEmail">Họ tên</label>
								<div class="controls">			
									<form:input path="user_name" type='text' class="span3" />
									<form:errors path="user_name"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputEmail">Địa chỉ</label>
								<div class="controls">			
									<form:input path="user_address" type='text' class="span3"/>
								</div>
							</div>
							<div class="controls">
								<button type="submit" class="btn block">Đăng ký</button>							
							</div>
						</form:form>
					</div>
				</div>
				<div class="span1">&nbsp;</div>
				<div class="span4">
					<div class="well">
						<h5>Đăng nhập</h5>
						<form:form action="dang-nhap" method="post" modelAttribute="user">
							<div class="control-group">
								<label class="control-label" for="inputEmail">Email</label>
								<div class="controls">
									<form:input path="user_email" class="span3" type="text" placeholder="Email"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputPassword">Password</label>
								<div class="controls">
									<form:input path="user_password" type="password" class="span3" placeholder="Password"/>
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<h3>${statusLogin }</h3>
									<button type="submit" class="defaultBtn">Đăng nhập</button>
									<a href="#">Quên mật khẩu?</a>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>