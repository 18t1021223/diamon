<%@ include file="/WEB-INF/views/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<title>Chi tiết sản phẩm</title>
<meta chartset='utf-8'>
<style type="text/css">
.product-content {
	overflow-x: hidden;
}
</style>
</head>
<body>
	<!-- 
Body Section 
-->
	<div class="row product-content">
		<div id="sidebar" class="span3">
			<div class="well well-small">
				<ul class="nav nav-list">
					<c:forEach var="item" items="${category_list }">
						<li><a href="<c:url value='/san-pham/${item.category_id }'/>"> <span
								class="icon-chevron-right"></span> ${item.category_name }
						</a></li>
					</c:forEach>
					<li><a class="totalInCart" href="cart.html"><strong>Total
								Amount <span class="badge badge-warning pull-right"
								style="line-height: 18px;">$448.42</span>
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
			<ul class="breadcrumb">
				<li><a href="index.html">Home</a> <span class="divider">/</span></li>
				<li><a href="products.html">Items</a> <span class="divider">/</span></li>
				<li class="active">Preview</li>
			</ul>
			<div class="well well-small">
				<div class="row-fluid">
					<div class="span5">
						<div id="myCarousel" class="carousel slide cntr">
							<div class="carousel-inner">
								<div class="item active">
									<a href="#"> <img src="<c:url value='/assets/user/img/${productById.product_img }'/>" alt=""
										style="width: 100%"></a>
								</div>
								
							</div>
							<a class="left carousel-control" href="#myCarousel"
								data-slide="prev">‹</a> <a class="right carousel-control"
								href="#myCarousel" data-slide="next">›</a>
						</div>
					</div>
					
					<div class="span7">
						<h3>${productById.product_name }</h3>
						<hr class="soft" />

						<form class="form-horizontal qtyFrm" action="<c:url value='/addCart/${ productById.product_id }'/>">
							<div class="control-group">
								<label class="control-label"><span><fmt:formatNumber value="${productById.product_price }" type="number"/> ₫</span></label>
								<div class="controls">
									<input type="number" class="span6" value='1' min='1'>
								</div>
							</div>

							<div class="control-group">
								<label class="control-label"><span>Color</span></label>
								<div class="controls">
									<select class="span11">
										<option>Red</option>
										<option>Purple</option>
										<option>Pink</option>
										<option>Red</option>
									</select>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label"><span>Materials</span></label>
								<div class="controls">
									<select class="span11">
										<option>Material 1</option>
										<option>Material 2</option>
										<option>Material 3</option>
										<option>Material 4</option>
									</select>
								</div>
							</div>
							<h4>100 items in stock</h4>
							<p>Nowadays the lingerie industry is one of the most
								successful business spheres. Nowadays the lingerie industry is
								one of ...<p>
								<button type="submit" class="shopBtn">
									<span class="icon-shopping-cart"></span> Thêm vào giỏ 
								</button>
						</form>
						
					</div>
				</div>
				<hr class="softn clr" />


				<ul id="productDetail" class="nav nav-tabs">
					<li class="active">
						<a href="#home" data-toggle="tab">Chi tiết sản phẩm</a>
						</li>
					<li class=""><a href="#profile" data-toggle="tab">Sản phẩm liên quan</a></li>
				</ul>
				<div id="myTabContent" class="tab-content tabWrapper">
					<div class="tab-pane fade active in" id="home">
						<h4>Product Information</h4>
						<table class="table table-striped">
							<tbody>
								<tr class="techSpecRow">
									<td class="techSpecTD1">Color:</td>
									<td class="techSpecTD2">Black</td>
								</tr>
								<tr class="techSpecRow">
									<td class="techSpecTD1">Style:</td>
									<td class="techSpecTD2">Apparel,Sports</td>
								</tr>
								<tr class="techSpecRow">
									<td class="techSpecTD1">Season:</td>
									<td class="techSpecTD2">spring/summer</td>
								</tr>
								<tr class="techSpecRow">
									<td class="techSpecTD1">Usage:</td>
									<td class="techSpecTD2">fitness</td>
								</tr>
								<tr class="techSpecRow">
									<td class="techSpecTD1">Sport:</td>
									<td class="techSpecTD2">122855031</td>
								</tr>
								<tr class="techSpecRow">
									<td class="techSpecTD1">Brand:</td>
									<td class="techSpecTD2">Shock Absorber</td>
								</tr>
							</tbody>
						</table>
						<p>Raw denim you probably haven't heard of them jean shorts
							Austin. Nesciunt tofu stumptown aliqua, retro synth master
							cleanse. Mustache cliche tempor, williamsburg carles vegan
							helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher
							synth. Cosby sweater eu banh mi, qui irure terry richardson ex
							squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis
							cardigan american apparel, butcher voluptate nisi qui.</p>
							
						
						<p>Raw denim you probably haven't heard of them jean shorts
							Austin. Nesciunt tofu stumptown aliqua, retro synth master
							cleanse. Mustache cliche tempor, williamsburg carles vegan
							helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher
							synth. Cosby sweater eu banh mi, qui irure terry richardson ex
							squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis
							cardigan american apparel, butcher voluptate nisi qui.</p>
						<p>Raw denim you probably haven't heard of them jean shorts
							Austin. Nesciunt tofu stumptown aliqua, retro synth master
							cleanse. Mustache cliche tempor, williamsburg carles vegan
							helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher
							synth. Cosby sweater eu banh mi, qui irure terry richardson ex
							squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis
							cardigan american apparel, butcher voluptate nisi qui.</p>
						<p>Raw denim you probably haven't heard of them jean shorts
							Austin. Nesciunt tofu stumptown aliqua, retro synth master
							cleanse. Mustache cliche tempor, williamsburg carles vegan
							helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher
							synth. Cosby sweater eu banh mi, qui irure terry richardson ex
							squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis
							cardigan american apparel, butcher voluptate nisi qui.</p>
						<p>Raw denim you probably haven't heard of them jean shorts
							Austin. Nesciunt tofu stumptown aliqua, retro synth master
							cleanse. Mustache cliche tempor, williamsburg carles vegan
							helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher
							synth. Cosby sweater eu banh mi, qui irure terry richardson ex
							squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis
							cardigan american apparel, butcher voluptate nisi qui.</p>
						<p>Raw denim you probably haven't heard of them jean shorts
							Austin. Nesciunt tofu stumptown aliqua, retro synth master
							cleanse. Mustache cliche tempor, williamsburg carles vegan
							helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher
							synth. Cosby sweater eu banh mi, qui irure terry richardson ex
							squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis
							cardigan american apparel, butcher voluptate nisi qui.</p>
						<p>Raw denim you probably haven't heard of them jean shorts
							Austin. Nesciunt tofu stumptown aliqua, retro synth master
							cleanse. Mustache cliche tempor, williamsburg carles vegan
							helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher
							synth. Cosby sweater eu banh mi, qui irure terry richardson ex
							squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis
							cardigan american apparel, butcher voluptate nisi qui.</p>
						<p>Raw denim you probably haven't heard of them jean shorts
							Austin. Nesciunt tofu stumptown aliqua, retro synth master
							cleanse. Mustache cliche tempor, williamsburg carles vegan
							helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher
							synth. Cosby sweater eu banh mi, qui irure terry richardson ex
							squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis
							cardigan american apparel, butcher voluptate nisi qui.</p>

					</div>
					<div class="tab-pane fade" id="profile">
						<c:forEach var="item" items="${productByCategoryId }">
							<div class="row-fluid">
								<div class="span2">
									<img src="<c:url value='/assets/user/img/${item.product_img }'/>" alt="">
								</div>
								<div class="span6">
									<h5>${item.product_name }</h5>
									<p>${item.product_title }</p>
								</div>
								<div class="span4 alignR">
									<form class="form-horizontal qtyFrm">
										<h3><fmt:formatNumber type="number" value="${item.product_price }"/> ₫</h3>									
										<div class="btn-group">
											<a href="product_details.html" class="defaultBtn"><span
												class=" icon-shopping-cart"></span> Add to cart</a> 
											<a href="<c:url value='/chi-tiet-san-pham/${category_id }/${item.product_id }'/>" class="shopBtn">VIEW</a>
										</div>
									</form>
								</div>
							</div>
							<hr class='soft'>
						</c:forEach>
						
					</div>
				
				</div>

			</div>
		</div>
	</div>
	<!-- Body wrapper -->
</body>