<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="en">

<head>
<meta charset="utf-8">
<title>EShopper - Bootstrap Shop Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
</head>

<body>
	<!-- Featured Start -->
	<div class="container-fluid pt-5">
		<div class="row px-xl-5 pb-3">
			<div class="col-lg-3 col-md-6 col-sm-12 pb-1">
				<div class="d-flex align-items-center border mb-4"
					style="padding: 30px;">
					<h1 class="fa fa-check text-primary m-0 mr-3"></h1>
					<h5 class="font-weight-semi-bold m-0">Quality Product</h5>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 col-sm-12 pb-1">
				<div class="d-flex align-items-center border mb-4"
					style="padding: 30px;">
					<h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
					<h5 class="font-weight-semi-bold m-0">Free Shipping</h5>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 col-sm-12 pb-1">
				<div class="d-flex align-items-center border mb-4"
					style="padding: 30px;">
					<h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
					<h5 class="font-weight-semi-bold m-0">14-Day Return</h5>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 col-sm-12 pb-1">
				<div class="d-flex align-items-center border mb-4"
					style="padding: 30px;">
					<h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
					<h5 class="font-weight-semi-bold m-0">24/7 Support</h5>
				</div>
			</div>
		</div>
	</div>
	<!-- Featured End -->

	<%--NhÃ  xuáº¥t báº£n--%>
	<!-- Categories Start -->
	<div class="container-fluid pt-5">
		<div class="row px-xl-5 pb-3">
			<c:forEach var="publisher" items="${publishers}">
				<div class="col-lg-4 col-md-6 pb-1">
					<div class="cat-item d-flex flex-column border mb-4"
						style="padding: 30px;">
						<p class="text-right">${publisher.publisherName}</p>
						<h8 class="font-weight-semi-bold m-0">${publisher.publisherDescription}</h8>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<!-- Categories End -->

	<!-- Products Start -->
	<div class="container-fluid pt-5">
		<div class="text-center mb-4">
			<h2 class="section-title px-5">
				<span class="px-2">Book</span>
			</h2>
		</div>
		<div class="row px-xl-5 pb-3 ">
			<c:forEach var="product" items="${products}">
				<div class="col-lg-3 col-md-6 col-sm-12 pb-1">
					<div class="card product-item border-0 mb-4">
						<div
							class="card-header product-img position-relative overflow-hidden bg-transparent border p-0 ">
							<!-- Hiển thị hình ảnh sách -->
							<c:url value="/image?fname=product/${product.images}" var="imgUrl"></c:url>
							<img  class=" img-fluid w-100" src="${imgUrl}" alt="Image" style="height: 350px" >
						</div>
						<div
							class="card-body border-left border-right text-center p-0 pt-4 pb-3">
							<!-- Hiển thị thông tin sách -->
							<h6 class="text-truncate mb-3">${product.productName}</h6>
							<div class="d-flex justify-content-center">
								<h6>${product.price} VNĐ</h6>
							</div>
						</div>
						<div
							class="card-footer d-flex justify-content-between bg-light border">
							<a
								href="${pageContext.request.contextPath}/detail?productId=${product.productId}"
								class="btn btn-sm text-dark p-0"><i
								class="fas fa-eye text-primary mr-1"></i>View Detail</a>
								 <a href="${pageContext.request.contextPath}/addtocart?productId=${product.productId}"
								class="btn btn-sm text-dark p-0"><i
								class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
						</div>
					</div>
				</div>
			</c:forEach>
			
		</div>
	</div>

	<!-- Back to Top -->
	<a href="#" class="btn btn-primary back-to-top"><i
		class="fa fa-angle-double-up"></i></a>
</body>

</html>
