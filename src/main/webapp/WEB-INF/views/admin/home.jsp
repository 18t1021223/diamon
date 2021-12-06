<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/taglib.jsp"%>

<head>
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
</head>

<main>
<div class="container-fluid">
	<div class="row mt-4 form-date">
		<h1 style="flex: 2;">Dashboard</h1>
		<span style="font-size: 17px;">Thời gian báo cáo: </span> <input
			class="form-control input-date daterange" type="text"
			name="daterange" value="" />
	</div>

	<ol class="breadcrumb mb-4">
		<li class="breadcrumb-item active">Dashboard</li>
	</ol>
	<div class="row">
		<div class="col-xl-3 col-md-6 mb-4">
			<div class="card border-left-primary shadow h-100 py-2">
				<div class="card-body">
					<div class="row no-gutters align-items-center">
						<div class="col mr-2">
							<div
								class="text-xs font-weight-bold text-primary text-uppercase mb-1">Doanh
								thu</div>
							<div class="h5 mb-0 font-weight-bold text-gray-800" id='revenue'>
								<fmt:formatNumber value="${revenue }" type="number" />
								₫
							</div>
						</div>
						<div class="col-auto">
	                      <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
	                    </div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-xl-3 col-md-6 mb-4">
			<div class="card border-left-success shadow h-100 py-2">
				<div class="card-body">
					<div class="row no-gutters align-items-center">
						<div class="col mr-2">
							<div
								class="text-xs font-weight-bold text-success text-uppercase mb-1">SL đơn hàng</div>
							<div class="h5 mb-0 font-weight-bold text-gray-800" id='quantity'>							
							</div>
						</div>
						<div class="col-auto">
	                      <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
	                    </div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-xl-3 col-md-6 mb-4">
			<div class="card border-left-info shadow h-100 py-2">
				<div class="card-body">
					<div class="row no-gutters align-items-center">
						<div class="col mr-2">
							<div
								class="text-xs font-weight-bold text-info text-uppercase mb-1">Doanh
								thu</div>
							<div class="h5 mb-0 font-weight-bold text-gray-800" id='revenue'>
								<fmt:formatNumber value="${revenue }" type="number" />
								₫
							</div>
						</div>					
					</div>
				</div>
			</div>
		</div>
		<div class="col-xl-3 col-md-6 mb-4">
			<div class="card border-left-warning shadow h-100 py-2">
				<div class="card-body">
					<div class="row no-gutters align-items-center">
						<div class="col mr-2">
							<div
								class="text-xs font-weight-bold text-warning text-uppercase mb-1">Doanh
								thu</div>
							<div class="h5 mb-0 font-weight-bold text-gray-800" id='revenue'>
								<fmt:formatNumber value="${revenue }" type="number" />
								₫
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-xl-12">
			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-chart-area mr-1"></i> Doanh thu
				</div>
				<div class="card-body">
					<canvas id="myAreaChart" width="100%" height="40"></canvas>
				</div>
			</div>
		</div>
		<!--<div class="col-xl-6">
			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-chart-bar mr-1"></i> Bar Chart Example
				</div>
				<div class="card-body">
					<canvas id="myBarChart" width="100%" height="40"></canvas>
				</div>
			</div>
		</div> -->
	</div>
	<div class="card mb-4">
		<div class="card-header">
			<i class="fas fa-table mr-1"></i> Chi tiết
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered table-hover" id="dataTable"
					width="100%" cellspacing="0">
					<thead>
						<tr>
							<th>Thời gian</th>
							<th>Doanh thu</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>Thời gian</th>
							<th>Doanh thu</th>
						</tr>
					</tfoot>
					<tbody class='table-data'>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
</main>
<content tag='private'> <script
	src="<c:url value='/assets/admin/js/chart.js'/>"></script> </content>
<content tag='script'> <script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
	crossorigin="anonymous"></script> <script
	src="<c:url value='/assets/admin/demo/chart-area-demo.js'/>"></script>
<script src="<c:url value='/assets/admin/demo/chart-bar-demo.js'/>"></script>
</content>
