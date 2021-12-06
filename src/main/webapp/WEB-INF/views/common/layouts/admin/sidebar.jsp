<%@ include file="/WEB-INF/views/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="layoutSidenav_nav">
	<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
		<div class="sb-sidenav-menu">
			<div class="nav">
				<div class="sb-sidenav-menu-heading">core</div>
				<a class="nav-link" href="<c:url value='/quan-tri/'/>">
					<div class="sb-nav-link-icon">
						<i class="fas fa-tachometer-alt"></i>
					</div> Tổng quan
				</a>
				<div class="sb-sidenav-menu-heading">Interface</div>
				<a class="nav-link collapsed" href="#" data-toggle="collapse"
					data-target="#collapseLayouts" aria-expanded="false"
					aria-controls="collapseLayouts">
					<div class="sb-nav-link-icon">
						<i class="fas fa-columns"></i>
					</div> Layouts
					<div class="sb-sidenav-collapse-arrow">
						<i class="fas fa-angle-down"></i>
					</div>
				</a>
				<div class="collapse" id="collapseLayouts"
					aria-labelledby="headingOne" data-parent="#sidenavAccordion">
					<nav class="sb-sidenav-menu-nested nav">
						<a class="nav-link" href="layout-static.html">Static
							Navigation</a> <a class="nav-link" href="layout-sidenav-light.html">Light
							Sidenav</a>
					</nav>
				</div>
				<%--bill start--%>
				<a class="nav-link collapsed" href="#bill" data-toggle="collapse"
					aria-expanded="false" aria-controls="bill">
					<div class="sb-nav-link-icon">
						<i class="fas fa-file-invoice-dollar"></i>
					</div> Đơn hàng
					<div class="sb-sidenav-collapse-arrow">
						<i class="fas fa-angle-down"></i>
					</div>
				</a>
				<div class="collapse" id="bill"
					aria-labelledby="headingOne" data-parent="#sidenavAccordion">
					<nav class="sb-sidenav-menu-nested nav">
						<a class="nav-link" href="layout-static.html">Danh sách đơn hàng</a>
						<a class="nav-link" href="layout-static.html">Đơn hủy</a>
						<a class="nav-link" href="layout-static.html">Trả hàng/hoàn tiền</a>  	  						
					</nav>
				</div>
				<%-- bill end--%>
				<%-- product start--%>
				<a class="nav-link collapsed" href="#product" data-toggle="collapse"
					aria-expanded="false" aria-controls="product">
					<div class="sb-nav-link-icon">
						<i class="fas fa-dice-d6"></i>
					</div> Sản phẩm
					<div class="sb-sidenav-collapse-arrow">
						<i class="fas fa-angle-down"></i>
					</div>
				</a>
				<div class="collapse" id="product"
					aria-labelledby="headingOne" data-parent="#sidenavAccordion">
					<nav class="sb-sidenav-menu-nested nav">
						<a class="nav-link" href="layout-static.html">Danh sách sản phẩm</a>
						<a class="nav-link" href="layout-static.html">Thêm sản phẩm</a>  						
					</nav>
				</div>
				<%-- product end--%>
				<div class="sb-sidenav-menu-heading">Thông báo</div>
				<%-- notify start--%>
				<a class="nav-link" href="index.html">
					<div class="sb-nav-link-icon">
						<i class="fas fa-signature"></i>
					</div> Chờ xác nhận
				</a>
				<%-- notify end--%>
				<div class="sb-sidenav-menu-heading">Thiết lập</div>
				<%--config start--%>
				<a class="nav-link collapsed" href="#config" data-toggle="collapse"
					aria-expanded="false" aria-controls="config">
					<div class="sb-nav-link-icon">
						<i class="fas fa-sliders-h"></i>
					</div> Thiết lập Shop
					<div class="sb-sidenav-collapse-arrow">
						<i class="fas fa-angle-down"></i>
					</div>
				</a>
				<div class="collapse" id="config"
					aria-labelledby="headingOne" data-parent="#sidenavAccordion">
					<nav class="sb-sidenav-menu-nested nav">
						<a class="nav-link" href="layout-static.html">Thông tin liên hệ</a>  						
					</nav>
				</div>
				<%-- config end--%>
				<a class="nav-link collapsed" href="#" data-toggle="collapse"
					data-target="#collapsePages" aria-expanded="false"
					aria-controls="collapsePages">
					<div class="sb-nav-link-icon">
						<i class="fas fa-book-open"></i>
					</div> Pages
					<div class="sb-sidenav-collapse-arrow">
						<i class="fas fa-angle-down"></i>
					</div>
				</a>
				<div class="collapse" id="collapsePages"
					aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
					<nav class="sb-sidenav-menu-nested nav accordion"
						id="sidenavAccordionPages">
						<a class="nav-link collapsed" href="#" data-toggle="collapse"
							data-target="#pagesCollapseAuth" aria-expanded="false"
							aria-controls="pagesCollapseAuth"> Authentication
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="pagesCollapseAuth"
							aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="login.html">Login</a> <a
									class="nav-link" href="register.html">Register</a> <a
									class="nav-link" href="password.html">Forgot Password</a>
							</nav>
						</div>
						<a class="nav-link collapsed" href="#" data-toggle="collapse"
							data-target="#pagesCollapseError" aria-expanded="false"
							aria-controls="pagesCollapseError"> Error
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="pagesCollapseError"
							aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="401.html">401 Page</a> <a
									class="nav-link" href="404.html">404 Page</a> <a
									class="nav-link" href="500.html">500 Page</a>
							</nav>
						</div>
					</nav>
				</div>
				<div class="sb-sidenav-menu-heading">Addons</div>
				<a class="nav-link" href="charts.html">
					<div class="sb-nav-link-icon">
						<i class="fas fa-chart-area"></i>
					</div> Charts
				</a> <a class="nav-link" href="tables.html">
					<div class="sb-nav-link-icon">
						<i class="fas fa-table"></i>
					</div> Tables
				</a>
			</div>
		</div>
		<div class="sb-sidenav-footer">
			<div class="small">Logged in as:</div>
			Start Bootstrap
		</div>
	</nav>
</div>
