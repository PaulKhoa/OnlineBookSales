<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
</head>

<body>

	<!-- Page Header Start -->
	<div class="container-fluid bg-secondary mb-5">
		<div
			class="d-flex flex-column align-items-center justify-content-center"
			style="min-height: 300px">
			<h1 class="font-weight-semi-bold text-uppercase mb-3">Shop
				Detail</h1>
			<div class="d-inline-flex">
				<p class="m-0">
					<a href="">Home</a>
				</p>
				<p class="m-0 px-2">-</p>
				<p class="m-0">Shop Detail</p>
			</div>
		</div>
	</div>
	<!-- Page Header End -->


	<!-- Shop Detail Start -->
	<div class="container-fluid py-5">
		<div class="row px-xl-5">
			<div class="col-lg-5 pb-5">
				<div id="product-carousel" class="carousel slide"
					data-ride="carousel">
					<div class="carousel-inner border">
						<div class="carousel-item active">
							<c:url value="/image?fname=product/${product.images}"
								var="imgUrl"></c:url>
							<img class="w-100 h-100" src="${imgUrl}" alt="Image">
						</div>
					</div>
					<a class="carousel-control-prev" href="#product-carousel"
						data-slide="prev"> <i class="fa fa-2x fa-angle-left text-dark"></i>
					</a> <a class="carousel-control-next" href="#product-carousel"
						data-slide="next"> <i
						class="fa fa-2x fa-angle-right text-dark"></i>
					</a>
				</div>
			</div>

			<div class="col-lg-7 pb-5">
				<h3 class="font-weight-semi-bold">${product.productName}</h3>
				<div class="d-flex mb-3">
					<div class="text-primary mr-2">
						<small class="fas fa-star"></small> <small class="fas fa-star"></small>
						<small class="fas fa-star"></small> <small
							class="fas fa-star-half-alt"></small> <small class="far fa-star"></small>

					</div>
					<small class="pt-1">Số lượng review : ${countReview}</small>
				</div>
				<h3 class="font-weight-semi-bold mb-4">${product.price} VNĐ</h3>
				<p class="mb-4">${product.description}</p>
					<%--Sửa lại --%>
					<div class="d-flex align-items-center mb-4 pt-2">
						<div class="input-group quantity mr-3" style="width: 130px;">
							<div class="input-group-btn">
								<button class="btn btn-primary btn-minus"
									onclick="decrementValue()">
									<i class="fa fa-minus"></i>
								</button>
							</div>
							<input id="quantityInput" type="text"
								class="form-control bg-secondary text-center"
								onchange="updateValue()" value="1">
							<div class="input-group-btn">
								<button class="btn btn-primary btn-plus"
									onclick="incrementValue()">
									<i class="fa fa-plus"></i>
								</button>
							</div>
						</div>
					</div>
					<button class="btn btn-primary px-3" onclick="addToCart()">
						<i class="fa fa-shopping-cart mr-1"></i> Add To Cart
					</button>
				<div class="d-flex pt-2">
					<p class="text-dark font-weight-medium mb-0 mr-2">Share on:</p>
					<div class="d-inline-flex">
						<a class="text-dark px-2" href=""> <i
							class="fab fa-facebook-f"></i>
						</a> <a class="text-dark px-2" href=""> <i class="fab fa-twitter"></i>
						</a> <a class="text-dark px-2" href=""> <i
							class="fab fa-linkedin-in"></i>
						</a> <a class="text-dark px-2" href=""> <i
							class="fab fa-pinterest"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="row px-xl-5">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h4 class="mb-3">Mô tả sản phẩm</h4>
						<p>${product.description}</p>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-12">
						<h4 class="mb-3">Châm ngôn cửa hàng</h4>
						<p>Chào mừng đến với cửa hàng sách E BookShop - nơi tìm kiếm
							tri thức và khám phá! Chúng tôi tự hào là điểm đến cho những
							người yêu sách và sự phát triển cá nhân. Với bộ sưu tập đa dạng
							và những cuốn sách tuyệt vời, chúng tôi mang đến cho bạn trải
							nghiệm mua sắm sách đáng nhớ. Hãy đến và khám phá cùng chúng tôi,
							nơi những cánh cửa tri thức mở ra!</p>

						<div class="row">
							<div class="col-md-6">
								<ul class="list-group list-group-flush">

								</ul>
							</div>
							<div class="col-md-6">
								<ul class="list-group list-group-flush">

								</ul>
							</div>
						</div>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-6">
						<h4 class="mb-4">Danh sách Đánh giá, nhận xét</h4>
						<c:forEach var="review" items="${reviews}">
							<div>
								<h6>${review.getUserID().getUsername()}
									<small> - <i>${review.getReviewDate()}</i></small>
								</h6>
									<div class="text-primary mb-2">
										<c:forEach begin="1" end="${review.getReviewStar()}">
											<i class="fas fa-star"></i>
										</c:forEach>
										<c:forEach begin="${review.getReviewStar() + 1}" end="5">
											<i class="far fa-star"></i>
										</c:forEach>
									</div>
								<p>${review.getReviewDescription()}</p>
							</div>
						</c:forEach>

						<c:if test="${empty reviews}">
							<p>Không có đánh giá nào!</p>
						</c:if>

					</div>
					<br>
					<c:if test="${hasPurchased}">
						<div class="col-md-6">
							<form class="rating-form" action="review" method="post">
								<h1>Đánh Giá</h1>
									<div class="rating-stars text-primary" id="star-container">
										<i class="star fas fa-star" data-value="1"></i> <i
											class="star fas fa-star" data-value="2"></i> <i
											class="star fas fa-star" data-value="3"></i> <i
											class="star fas fa-star" data-value="4"></i> <i
											class="star fas fa-star" data-value="5"></i>
									</div>
								<input type="hidden" id="reviewStar" name="reviewStar" value="5">


								<br> <input type="hidden" name="productId"
									value="${product.productId}"> <br> <input
									type="hidden" name="userID" value="${sessionScope.user.userID}">

								<textarea class="text-primary mb-2" id="description"
									name="description" placeholder="Nhập mô tả đánh giá"></textarea>
								<br>
								<button class="text-primary mb-2" type="submit">Gửi
									Đánh Giá</button>
							</form>
						</div>
					</c:if>
				</div>
			</div>
			<br>
		</div>
	</div>
	<!-- Shop Detail End -->


	<!-- Back to Top -->
	<a href="#" class="btn btn-primary back-to-top"><i
		class="fa fa-angle-double-up"></i></a>

	<%--Thêm mới--%>
	<script>
        // Get the quantity input element
        var quantityInput = document.getElementById('quantityInput');

        // Function to decrement the value
        function decrementValue() {
            var unitValue = parseInt(quantityInput.value, 10);
            if (unitValue > 0) {
                unitValue--;
                quantityInput.setAttribute('value', unitValue);
                console.log('Decremented value:', unitValue);
            }
        }

        // Function to increment the value
        function incrementValue() {
            var unitValue = parseInt(quantityInput.value, 10);
            unitValue=unitValue+1;
            quantityInput.setAttribute('value', unitValue);
            console.log('Incremented value:', unitValue);
        }
        function updateValue() {
            var unitValue = parseInt(quantityInput.value, 10);
            if (isNaN(unitValue) || unitValue < 0) {
                unitValue = 0;
            }
            quantityInput.setAttribute('value', unitValue);
            console.log('Updated value:', unitValue);
        }
        function addToCart() {
            // Lấy giá trị productID từ nguồn dữ liệu của bạn, có thể là một thuộc tính của đối tượng product hoặc một biến khác
            var productId = ${product.productId};

            // Lấy giá trị unitValue từ ô input
            var unitValue = parseInt(quantityInput.value, 10);

            // Xây dựng URL với các tham số
            var url = "${pageContext.request.contextPath}/addtocart2?productId=" + encodeURIComponent(productId) + "&unitValue=" + encodeURIComponent(unitValue);

            // Chuyển hướng người dùng đến URL
            window.location.href = url;
        }
    </script>

	<script>
        const starContainer = document.getElementById('star-container');
        const reviewStarInput = document.getElementById('reviewStar');

        starContainer.addEventListener('click', function (event) {
            const starValue = event.target.dataset.value;
            if (starValue) {
                // Update the hidden input with the selected star value
                reviewStarInput.value = starValue;

                // Highlight the selected stars
                const stars = document.querySelectorAll('.star');
                stars.forEach(star => {
                    const value = parseInt(star.dataset.value);
                    star.classList.toggle('fas', value <= starValue);
                    star.classList.toggle('far', value > starValue);
                });
            }
        });
    </script>



</body>

</html>