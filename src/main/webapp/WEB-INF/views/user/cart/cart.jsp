<%@ include file="/WEB-INF/views/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>Giỏ hàng</title>
</head>
<body>
	<!-- 
Body Section 
-->
	<div class="row">
		<div class="span12">
			<ul class="breadcrumb">
				<li><a href="index.html">Home</a> <span class="divider">/</span></li>
				<li class="active">Check Out</li>
			</ul>
			<div class="well well-small">
				<h1>
					Giỏ hàng <small class="pull-right">${cart.size() } Sản phẩm</small>
				</h1>
				<hr class="soften" />

				<table class="table table-bordered table-condensed">
					<thead>
						<tr>
							<th>Sản phẩm</th>
							<th>Mô tả</th>
							<th>Màu sắc</th>
							<th>Giá bán</th>
							<th>Số lượng</th>							
							<th>Chỉnh sửa</th>
							<th>Xóa</th>
							<th>Tổng</th>
							
						</tr>
					</thead>
					<tbody>
						<c:if test="${ cart != null}">
							<c:forEach var='item' items="${cart }" >
							<c:set var="cartDto" value="${item.value }"/>
								<tr>
									<td><img width="100" src="<c:url value='/assets/user/img/${ cartDto.prod.product_img }'/>" alt=""></td>
									<td>${cartDto.prod.product_name }<br>${cartDto.prod.product_title }
									</td>
				
									<td><span class="shopBtn"><span class="icon-ok"></span></span>
									</td>
									<td><fmt:formatNumber value="${cartDto.prod.product_price }" type='number'/></td>
									<td>
										<input type='number' min='1' class="span1" style="max-width: 34px"
										 id="quanty-product-${cartDto.prod.product_id }" size="16" type="text"
										value="${ cartDto.quanty}">
									</td>
									<td>
										<div class="input-append">						
											<button class="btn btn-mini btn-danger edit-cart" type="button"  data-id='${cartDto.prod.product_id }'>
												<span class="icon-edit"></span>
											</button>
										</div>
									</td>
									<td>
										<div class="input-append">						
											<a href="<c:url value='/deleteCart/${item.key }' />" class="btn btn-mini btn-danger" type="button">
												<span class="icon-remove"></span>
											</a>
										</div>
									</td>
									<td><fmt:formatNumber value='${cartDto.quanty * cartDto.prod.product_price}' type='number'/>₫</td>
								</tr>		
							</c:forEach>
						</c:if>
									
						<tr>
							<td colspan="6" class="alignR">Tạm tính:</td>
							<td class="label label-primary"><fmt:formatNumber value='${totalPrice }'/> ₫</td>
						</tr>
					</tbody>
				</table>
				<br />
			
				<a href="<c:url value='/trang-chu/'/>" class="shopBtn btn-large"><span
					class="icon-arrow-left"></span> Tiếp tục mua sắm </a> 
				<a href="<c:url value='/thanh-toan'/>" class="shopBtn btn-large pull-right">Thanh toán <span
					class="icon-arrow-right"></span></a>
			</div>
		</div>
	</div>
	<content tag='script'>
		<script type="text/javascript">
			$(".edit-cart").on("click",function(){
				let id = $(this).data("id");
				let quanty = $("#quanty-product-"+id).val();
				window.location = "editCart/"+id+"/"+quanty;
			});
		</script>
	</content>
	
</body>
</html>