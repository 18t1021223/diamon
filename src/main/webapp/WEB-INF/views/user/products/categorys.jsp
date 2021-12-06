<%@ include file="/WEB-INF/views/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<head>
<title>sản phẩm</title>
<style>
.pagination {
	display: flex;
	justify-content: center;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
	border: 1px solid #ddd;
}

.pagination a.active {
	background-color: #f89406;
	color: white;
	border: 1px solid #4CAF50;
}
.pagination a:hover:not (
.active
 
)
{
background-color
:
 
#ddd
;


}
</style>
</head>
<body>
	<div class="well well-small">
		<select class="pull-right">
			<option>A - Z</option>
			<option>Cao - Thấp</option>
		</select>
		<h3>Danh sách sản phẩm</h3>
		<%-- NẾU DANH SÁCH CÓ SẢN PHẨM --%>
		<c:if test="${productByCategory.size() >0 }">
			<c:set var="size" value="${productByCategory.size() }"/>
			<div class="row-fluid">
				<ul class="thumbnails">
			<c:forEach var="item" items="${productByCategory }" varStatus="i">
				<c:if test="${( (i.index ) % 3 == 0 || (i.index) == size ) && i.index !=0}">
					</ul></div>
					<c:if test="${ (i.index) < size }">
						<div class="row-fluid">
							<ul class="thumbnails">
					</c:if>
				</c:if>
				<li class="span4">
					<div class="thumbnail">
						<a href="product_details.html" class="overlay"></a>
						<a	class="zoomTool" href="<c:url value='/chi-tiet-san-pham/${category_id }/${item.product_id }'/>" title="add to cart">
						<span class="icon-search"></span> QUICK VIEW</a> 
						<a href="<c:url value='/chi-tiet-san-pham/${category_id }/${item.product_id }'/>">
						<img src="<c:url value='/assets/user/img/${item.product_img }'/>" alt=""></a>
						<div class="caption cntr">
							<p>${item.product_name }</p>
							<p>
								<strong><fmt:formatNumber value="${item.product_price}" type="number"/> ₫</strong>
							</p>
							<h4>
								<a class="shopBtn" href="#" title="add to cart"> Add to cart
								</a>
							</h4>
							<div class="actionList">
								<a class="pull-left" href="#">Add to Wish List </a> <a
									class="pull-left" href="#"> Add to Compare </a>
							</div>
							<br class="clr">
						</div>
					</div>
				</li>
			</c:forEach>
		</c:if>

	</div>
	
	<%-- paginate start--%>
	<div class="pagination">
		<c:if test="${paginateInfo.currentPage > 1 }">
			<a href="<c:url value='/san-pham/${category_id }/${ paginateInfo.currentPage -1}'/>">&laquo;</a>
		</c:if>
	 
		<c:forEach var="i" begin="${paginateInfo.start }" end="${paginateInfo.end }" >
			<c:if test="${paginateInfo.currentPage == i}">
				<a href="<c:url value='/san-pham/${category_id }/${ i }'/>" class="active">${i }</a>
			</c:if>
			<c:if test="${ paginateInfo.currentPage != i }">
				<a href="<c:url value='/san-pham/${category_id }/${i }'/>">${ i }</a>
			</c:if>
		</c:forEach>
		
		<c:if test="${paginateInfo.currentPage < paginateInfo.totalPage }">
			<a href="<c:url value='/san-pham/${category_id }/${ paginateInfo.currentPage +1}'/>">&raquo;</a>
		</c:if>
	</div>
	<%-- paginate end--%>
	
	</div>
	</div>

</body>
