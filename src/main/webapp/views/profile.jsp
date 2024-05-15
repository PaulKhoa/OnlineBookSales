<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thong tin tai khoan</title>
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
			<form action="<c:url value='/user-profile'/>" method="post"
				enctype="multipart/form-data">
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
									<h4 class="text-right">Chỉnh sửa thông tin</h4>
								</div>
								<div class="row mt-2">
									<div class="col-md-12">
										<label class="mr-2">User name</label> <input type="text"
											class="form-control" name="username" value="${user.username}">
									</div>
								</div>
								<div class="row mt-2">
									<div class="col-md-12">
										<label class="mr-2">Name</label> <input type="text"
											class="form-control" name="fullname" value="${user.fullname}">
									</div>
								</div>
								<div class="row mt-2">
									<div class="col-md-12">
										<label class="mr-2">Phone</label> <input type="text"
											class="form-control" name="phone" value="${user.phone}">
									</div>
								</div>
								<div class="row mt-2">
									<div class="col-md-12">
										<label class="mr-2">Address</label> <input type="text"
											class="form-control" name="address" value="${user.address}">
									</div>
								</div>
								<div class="mt-5 text-center">
									<button class="btn btn-primary profile-button" type="submit">Lưu
										thông tin</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
		<h2 class="text-center">Các đơn hàng của bạn</h2>
		<ul class="list-group my-3 resetpass-shadow "
			style="width: 80%; margin-left: 160px;">
			<c:if test="${not empty list_orders}">
				<c:forEach items="${list_orders}" var="item">
					<li class="list-group-item ">
						<h5 class="mb-2">
							<span class="badge badge-success"> ${item.status} </span>
						</h5>
						<h3>
							<a>Mã đơn hàng: ${item.orderID}</a> <a
								href=<c:url value = "/detailorder?orderID=${item.orderID}"></c:url>
								class="btn btn-outline-info mt-3"> Chi tiết đơn hàng </a>
						</h3>
						<h5>
							<fmt:formatNumber value="${item.totalPrice}"
								maxFractionDigits="${item.totalPrice}"></fmt:formatNumber>
							VNĐ
						</h5>
						<p class="mb-0">Thời gian: ${item.orderDate}</p>
					</li>
				</c:forEach>
				<li class="list-group-item text-center py-4"><a
					href=<c:url value = "/home"></c:url>
					class="btn btn-outline-info mt-3"> Tiếp tục shopping </a></li>
			</c:if>

			<c:if test="${empty list_orders}">
				<li class="list-group-item text-center py-4">
					<h3 class="font-weight-light">Bạn chưa có đơn hàng nào</h3> <a
					href=<c:url value = "/home"></c:url>
					class="btn btn-outline-info mt-3"> Tiếp tục shopping </a>
				</li>
			</c:if>
		</ul>
	</div>
</body>
</html>