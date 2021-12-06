<%@ include file="/WEB-INF/views/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
	<title>trang chủ</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>	
<body>
	<div class="row">
		<div id="sidebar" class="span3">
			<div class="well well-small">
				<ul class="nav nav-list">
					<c:forEach var="item" items="${category_list }">
						<li><a href="<c:url value='/san-pham/${item.category_id }'/>"> <span
								class="icon-chevron-right"></span> ${item.category_name }
						</a></li>
					</c:forEach>

					<li><a class="totalInCart" href="<c:url value='/gio-hang'/>">
					<strong>Tổng tiền <span class="badge badge-warning pull-right"
								style="line-height: 18px;"><fmt:formatNumber value='${totalPrice }' type='number'/> ₫</span>
						</strong></a></li>
				</ul>
			</div>

			<div class="well well-small alert alert-warning cntr">
				<h2>50% Discount</h2>
				<p>
					only valid for online order. <br> <br> <a
						class="defaultBtn" href="#">Click here </a>
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
			<div class="well np">
				<div id="myCarousel" class="carousel slide homCar">
					<div class="carousel-inner">
						<c:forEach var="item" items="${slides_list }" varStatus="index">
							<c:if test="${ index.first }">
								<div class="item active">
							</c:if>
							<c:if test="${not index.first}">
								<div class="item">
							</c:if>
							<img style="width: 100%"
								src="<c:url value='/assets/user/img/${item.getSlides_img() }'/>"
								alt="bootstrap ecommerce templates">
							<div class="carousel-caption">
								<h4>${item.getSlides_caption() }</h4>
								<p>
									<span>${item.getslides_content() }</span>
								</p>
							</div>
					</div>
					</c:forEach>

				</div>
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
					href="#myCarousel" data-slide="next">&rsaquo;</a>
			</div>
		</div>
		<!--
New Products
-->
		<div class="well well-small">
			<h3>Sản phẩm mới</h3>
			<hr class="soften" />
			<div class="row-fluid">
				<div id="newProductCar" class="carousel slide">
					<div class="carousel-inner">
						<c:if test="${product_list.size()>0 }">
							<div class="item active">
								<ul class="thumbnails">
									<c:forEach var="item" items="${product_list}" begin="0" end="3">
										<li class="span3">
											<div class="thumbnail">
												<a class="zoomTool" href="product_details.html"
													title="add to cart"><span class="icon-search"></span>
													QUICK VIEW</a> <a href="#" class="tag"></a> <a
													href="product_details.html"><img
													src="<c:url value='/assets/user/img/${item.product_img }'/>"
													alt="bootstrap-ring"></a>
											</div>
										</li>
									</c:forEach>
								</ul>
							</div>
							<div class="item">
							 	<ul class="thumbnails">							
								<c:forEach var='item' items="${product_list }" begin="4" varStatus="i">
							
									<c:if test="${ i.index %4==0|| product_list.size() == i.index} ">
											</ul>
										</div>
										<c:if test="${i.index  < product_list.size()}">
											<div class="item">
								 				<ul class="thumbnails">
										</c:if>
									</c:if>
									<li class="span3">
										<div class="thumbnail">
											<a class="zoomTool" href="product_details.html"
												title="add to cart"><span class="icon-search"></span> QUICK
												VIEW</a> <a href="product_details.html"><img
												src="<c:url value='/assets/user/img/${item.product_img }'/>" alt=""></a>
										</div>
									</li>
								</c:forEach>
								</ul>
							</div>				
						</c:if>
						
					</div>
					<a class="left carousel-control" href="#newProductCar" data-slide="prev">&lsaquo;</a> 
					<a class="right carousel-control" href="#newProductCar" data-slide="next">&rsaquo;</a>
				</div>
			</div>
		</div>
		<!--
	Featured Products
	-->
		<div class="well well-small">
			<h3>
				<a class="btn btn-mini pull-right" href="products.html"
					title="View more">VIew More<span class="icon-plus"></span></a> Sản
				phẩm nổi bật
			</h3>
			<hr class="soften" />
			<div class="row-fluid">
				<ul class="thumbnails">
					<c:forEach var="item" items="${product_list }">
						<li class="span4">
							<div class="thumbnail">
								<a class="zoomTool" href="product_details.html"
									title="add to cart"><span class="icon-search"></span> QUICK
									VIEW</a> <a href="product_details.html"><img
									src="<c:url value='/assets/user/img/${item.product_img }'/>"
									alt=""></a>
								<div class="caption">
									<h5>${item.product_name }</h5>
									<h4>
										<a class="defaultBtn" href="product_details.html"
											title="Click to view"><span class="icon-zoom-in"></span></a>
										<a class="shopBtn" href="<c:url value='/addCart/${item.product_id }'/>" title="Thêm vào giỏ"><span
											class="icon-plus"></span></a> <span class="pull-right"><fmt:formatNumber
												value="${item.product_price }" type="number" /> ₫</span>
									</h4>
								</div>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<hr>
		<div class="well well-small">
			<a class="btn btn-mini pull-right" href="#">View more <span
				class="icon-plus"></span></a> Tất cả sản phẩm
		</div>
	</div>
</body>
