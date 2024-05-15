<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thong tin don hang</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
<!-- Bootstrap core CSS -->
<link
	href=<c:url value = "/template/user/css/bootstrap.min.css"></c:url>
	rel="stylesheet">
<link href=<c:url value = "/template/user/css/card.css"></c:url>
	rel="stylesheet">
<link href=<c:url value = "/template/user/css/cart.css"></c:url>
	rel="stylesheet">


<!-- Material Design Bootstrap -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.1/mdb.min.css"
	rel="stylesheet" />
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<link href=<c:url value = "/templates/user/css/style.min.css"></c:url>
	rel="stylesheet">

<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.1/mdb.min.js"></script>
<script type="text/javascript"
	src="	https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.9.2/umd/popper.min.js"></script>
<script type="text/javascript" src="/templates/userjs/bootstrap.min.js"></script>
<script type="text/javascript"
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
html, body, header, .carousel {
	height: 60vh;
}

@media ( max-width : 740px) {
	html, body, header, .carousel {
		height: 100vh;
	}
}

@media ( min-width : 800px) and (max-width: 850px) {
	html, body, header, .carousel {
		height: 100vh;
	}
}

.background {
	background-color: #dcdcdc;
}
</style>
</head>
<body>
	<div class="wrapper">
		<div id="content">
			<div class="container rounded bg-white mt-5 mb-5">
				<div class="row">
					<div class="col-md-4 border-right">
						<div
							class="d-flex flex-column align-items-center text-center p-3 py-5">
							<h4 class="text-right">Thông tin khách hàng</h4>
							<c:url value="/template/user/user.jpg" var="urlImg"></c:url>
							<img class="rounded-circle mt-5" width="200px" height="200px"
								src="${urlImg}"> <span class="font-weight-bold">${user.username}</span>
							<span class="text-black-50">${user.email}</span>
							<div class="row mt-2">
								<label class="mr-2">Name: ${user.fullname}</label><br> <label
									class="mr-2">Phone: ${user.phone}</label> <label class="mr-2">Address:
									${user.address}</label>
							</div>
						</div>
					</div>
					<div class="col-md-8 border-right">
						<div class="p-3 py-5">
							<div
								class="d-flex justify-content-between align-items-center mb-3">
								<h4 class="text-right">Chi tiết đơn hàng</h4>
							</div>
							<div
								class="d-flex justify-content-between align-items-center mb-3">
								<h5 class="text-right">Thông tin đơn hàng</h5>
							</div>
							<div class="row mt-2">
								<div class="col-md-12">
									<label class="mr-2">Mã đơn hàng: ${order.orderID}</label>
								</div>
							</div>
							<div class="row mt-2">
								<div class="col-md-12">
									<label class="mr-2">Tên người dùng:
										${order.user.username}</label>
								</div>
							</div>
							<div class="row mt-2">
								<div class="col-md-12">
									<label class="mr-2">Tổng tiền đơn: ${order.totalPrice}</label>
								</div>
							</div>
							<div class="row mt-2">
								<div class="col-md-12">
									<label class="mr-2">Ngày đặt đơn: ${order.orderDate}</label>
								</div>
							</div>
							<div class="row mt-2">
								<div class="col-md-12">
									<span class="badge badge-success"> ${order.status} </span>
								</div>
							</div>
							<div class="row mt-2">
								<div class="col-md-12">
									<label class="mr-2">Phương thức thanh toán:
										${order.payment.paymentName}</label>
								</div>
							</div>

							<div
								class="d-flex justify-content-between align-items-center mb-3">
								<h5 class="text-right">Sản phẩm đơn hàng</h5>
							</div>
							<c:forEach var="orderItem" items="${orderItems}">
								<p>Tên sản phẩm: ${orderItem.product.productName}</p>
								<p>Số lượng: ${orderItem.quantity}</p>
								<p>Tiền: ${orderItem.total} VNĐ</p>
								<hr />
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
			<li class="list-group-item text-center py-4"><a
				href=<c:url value = "/home"></c:url>
				class="btn btn-outline-info mt-3"> Tiếp tục shopping </a></li>
		</div>
	</div>
</body>
</html>