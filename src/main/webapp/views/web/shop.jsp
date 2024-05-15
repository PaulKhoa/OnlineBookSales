<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">

</head>

<body>

	<!-- Shop Start -->
	<div class="container-fluid pt-5">
		<div class="row px-xl-5">
			<!-- Shop Sidebar Start -->
			<div class="col-lg-3 col-md-12"></div>
			<!-- Shop Sidebar End -->


			<!-- Shop Product Start -->
			<div class="col-lg-9 col-md-12">
				<div class="row pb-3">
					<div class="col-12 pb-1">
						<div
							class="d-flex align-items-center justify-content-between mb-4">

							<div class="dropdown ml-4"></div>
						</div>
					</div>
					<c:forEach var="product" items="${products}">
						<div class="col-lg-4 col-md-6 col-sm-12 pb-1">
							<div class="card product-item border-0 mb-4">
								<div
									class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
									<c:url value="/image?fname=product/${product.images}"
										var="imgUrl"></c:url>
									<img class="img-fluid w-100" src="${imgUrl}" alt="Image"
										style="height: 350px">
								</div>
								<div
									class="card-body border-left border-right text-center p-0 pt-4 pb-3">
									<h6 class="text-truncate mb-3">${product.productName}</h6>
									<div class="d-flex justify-content-center">
										<h6>${product.productAuthor}</h6>
										<h6 class="text-muted ml-2">${product.price} VNĐ</h6>
									</div>
								</div>
								<div
									class="card-footer d-flex justify-content-between bg-light border">
									<a
										href="${pageContext.request.contextPath}/detail?productId=${product.productId}"
										class="btn btn-sm text-dark p-0"><i
										class="fas fa-eye text-primary mr-1"></i>View Detail</a>
										 <a
										href="${pageContext.request.contextPath}/addtocart?productId=${product.productId}"
										class="btn btn-sm text-dark p-0"><i
										class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<!-- Shop Product End -->
		</div>
	</div>
	<!-- Shop End -->

	<!-- Back to Top -->
	<a href="#" class="btn btn-primary back-to-top"><i
		class="fa fa-angle-double-up"></i></a>

</body>

</html>