<%@ include file="/WEB-INF/views/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title></title>
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
				<li><a href="index.html">Home</a> <span class="divider">/</span></li>
				<li class="active">Registration</li>
			</ul>
			<h3>Registration</h3>
			<hr class="soft" />

			<div class="well">
				<form:form class="form-horizontal" action="thanh-toan" modelAttribute="bill" method="post">
					<h3>Thanh toán đơn hàng</h3>
					
					<div class="control-group">
						<label class="control-label">Họ tên <sup>*</sup></label>
						<div class="controls">
							<form:input path="bill_name" type="text" placeholder="Họ tên" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Số điện thoại <sup>*</sup></label>
						<div class="controls">
							<form:input path="bill_phone" type="text" placeholder="Số điện thoại"/>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Địa chỉ<sup>*</sup></label>
						<div class="controls">
							<form:input path="bill_address" type="text" placeholder="Địa chỉ" />
							
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Ghi chú</label>
						<div class="controls">
							<form:textarea path="bill_note"/>
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<input type="submit" name="submitAccount" value="Xác nhận"
								class="shopBtn exclusive">
						</div>
					</div>
				</form:form>
			</div>

			<div class="well">
				<form class="form-horizontal">
					<h3>Tài khoản</h3>
					<div class="control-group">
						<label class="control-label">Fiels label <sup>*</sup></label>
						<div class="controls">
							<input type="text" placeholder=" Field name">
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<input type="submit" name="submitAccount" value="Register"
								class="exclusive shopBtn">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>