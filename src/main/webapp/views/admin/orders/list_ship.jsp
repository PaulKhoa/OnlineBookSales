<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh sách đơn hàng đang giao</title>
</head>
<body>
	<div class="main-content">
		<form action="<c:url value='/admin-order'/>" id="formSubmit"
			method="post">
			<div class="main-content-inner">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">Home</a>
							</li>
							<li class="active">Danh sách đơn hàng đang giao</li>
						</ul><!-- /.breadcrumb -->

						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- /.nav-search -->
					</div>
				<div class="page-content">
					<div class="row">
						<div class="col-xs-12">
							<div class="row">
								<div class="col-xs-12">
									<div class="table-responsive">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th>ID</th>
													<th>Ngày đặt đơn</th>
													<th>Trạng thái</th>
													<th>Tổng tiền</th>
													<th>ID tài khoản</th>
													<th>Tên tài khoản</th>
													<th>Email</th>
													<th>Phương thức thanh toán</th>
													<th>Thao tác</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="item" items="${list_orders}">
													<tr>
														<td>${item.orderID}</td>
														<td>${item.orderDate}</td>
														<td>${item.status}</td>
														<td>${item.totalPrice}</td>
														<td>${item.user.userID}</td>
														<td>${item.user.username}</td>
														<td>${item.user.email}</td>
														<td>${item.payment.paymentName}</td>
														<td><a class="btn btn-sm btn-primary btn-edit"
															data-toggle="tooltip" title="Cập nhật trạng thái"
															href='<c:url value="/admin-order/updateStatus?orderID=${item.orderID}"/>'>
																<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
														</a>
														<a class="btn btn-sm btn-success btn-view"
															data-toggle="tooltip" title="Xem chi tiết đơn hàng"
															href='<c:url value="/admin-order/viewOrder?orderID=${item.orderID}"/>'>
																<i class="fa fa-eye" aria-hidden="true"></i>
														</a>
														</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										<div class="clearfix">
											<ul class="pagination">
												<li class="page-item"><c:choose>
														<c:when test="${index > 0}">
															<a
																href="<c:url value='/admin-order/ship?index=${index-1}'></c:url>">Previous</a>
														</c:when>
														<c:otherwise>
															<span class="disabled">Previous</span>
														</c:otherwise>
													</c:choose></li>
												<c:forEach begin="0" end="${empty list_orders ? 0 :sizepage-1}" var="item">
													<li class="page-item"><c:choose>
															<c:when test="${item == index}">
																<a
																	href="<c:url value='/admin-order/ship?index=${item}'></c:url>"
																	class="page-link active">${item}</a>
															</c:when>
															<c:otherwise>
																<a
																	href="<c:url value='/admin-order/ship?index=${item}'></c:url>"
																	class="page-link">${item}</a>
															</c:otherwise>
														</c:choose></li>
												</c:forEach>
												<li class="page-item"><c:choose>
														<c:when test="${index < sizepage-1}">
															<a
																href="<c:url value='/admin-order/ship?index=${index+1}'></c:url>"
																class="page-link">Next</a>
														</c:when>
														<c:otherwise>
															<span class="disabled">Next</span>
														</c:otherwise>
													</c:choose></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>

</body>

</html>