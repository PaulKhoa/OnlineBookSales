<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true"%>
<!-- Topbar Start -->
<div class="container-fluid">
	<div class="row bg-secondary py-2 px-xl-5">
		<div class="col-lg-6 d-none d-lg-block">
			<div class="d-inline-flex align-items-center">
				<a class="text-dark"
					href="https://www.facebook.com/pauldangkhoa117/about?locale=vi_VN">Help</a>
				<span class="text-muted px-2">|</span> <a class="text-dark"
					href="https://www.facebook.com/nguyendoantienanh2003?locale=vi_VN">Support</a>
			</div>
		</div>
		<div class="col-lg-6 text-center text-lg-right">
			<div class="d-inline-flex align-items-center">
				<a class="text-dark px-2"
					href="https://www.facebook.com/anhnguyet.nguyen.18400"> <i
					class="fab fa-facebook-f"></i>
				</a> <a class="text-dark px-2" href="https://twitter.com/home?lang=vi">
					<i class="fab fa-twitter"></i>
				</a> <a class="text-dark px-2"
					href="https://www.instagram.com/anhbnguyet/"> <i
					class="fab fa-instagram"></i>
				</a> <a class="text-dark pl-2"
					href="https://youtube.com/@anhnguyet9661?si=5AEUUZr6Pt5AAxwg">
					<i class="fab fa-youtube"></i>
				</a>
			</div>
		</div>
	</div>
	<div class="row align-items-center py-3 px-xl-5">
		<div class="col-lg-3 d-none d-lg-block">
			<a href="" class="text-decoration-none">
				<h1 class="m-0 display-5 font-weight-semi-bold">
					<span class="text-primary font-weight-bold border px-3 mr-1">E</span>BookShop
				</h1>
			</a>
		</div>
		<div class="col-lg-6 col-6 text-left">
			<!-- Đặt ô tìm kiếm và các sự kiện liên quan -->
			<form id="searchForm" action="search" method="GET"
				onsubmit="return onSearchSubmit()">
				<div class="input-group">
					<input type="text" id="searchInput" name="searchInput"
						class="form-control" placeholder="Tìm kiếm sản phẩm">
					<div class="input-group-append">
						<span class="input-group-text bg-transparent text-primary">
							<i class="fa fa-search"></i>
						</span>
					</div>
				</div>
			</form>

			<!-- Lịch sử tìm kiếm -->
			<style>
#searchHistoryList {
	list-style: none; /* Loại bỏ chấm đầu dòng */
	/*padding-inline-start: 0; !* Loại bỏ khoảng trắng bên trái *!*/
	margin-top: 5px;
}

#searchHistoryList li {
	margin: 5px; /* Điều chỉnh khoảng cách giữa các mục trong danh sách */
}
</style>

			<ul id="searchHistoryList"></ul>
		</div>
		<div class="col-lg-3 col-6 text-right">
			<a href='<c:url value = "/loadCartItems"></c:url>' class="btn border">
				<i class="fas fa-shopping-cart text-primary"></i>
			</a>
		</div>
	</div>
</div>
<!-- Topbar End -->


<!-- Navbar Start -->
<div class="container-fluid mb-5">
	<div class="row border-top px-xl-5">
		<div class="col-lg-3 d-none d-lg-block">
			<a
				class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100"
				data-toggle="collapse" href="#navbar-vertical"
				style="height: 65px; margin-top: -1px; padding: 0 30px;">
				<h6 class="m-0">Danh mục</h6> <i class="fa fa-angle-down text-dark"></i>
			</a>
			<nav
				class="collapse show navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0"
				id="navbar-vertical">
				<div class="navbar-nav w-100 overflow-hidden" style="height: 410px">
					<c:forEach var="category" items="${categories}">
						<div class="nav-item dropdown">
							<a
								href="${pageContext.request.contextPath}/category?categoryId=${category.categoryId}"
								class="nav-link">${category.categoryName} <i
								class="fa fa-angle-down float-right mt-1"></i></a>
						</div>
					</c:forEach>
				</div>
			</nav>
		</div>
		<div class="col-lg-9">
			<nav
				class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
				<a href="" class="text-decoration-none d-block d-lg-none">
					<h1 class="m-0 display-5 font-weight-semi-bold">
						<span class="text-primary font-weight-bold border px-3 mr-1">E</span>Shopper
					</h1>
				</a>
				<button type="button" class="navbar-toggler" data-toggle="collapse"
					data-target="#navbarCollapse">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-between"
					id="navbarCollapse">
					<div class="navbar-nav mr-auto py-0">
						<a href=<c:url value = "/index.jsp"></c:url>
							class="nav-item nav-link ">Home</a>

						<c:if test="${sessionScope.user == null}">
							<div class="nav-item dropdown">
								<a href="#" class="nav-link dropdown-toggle"
									data-toggle="dropdown">Pages</a>
								<div class="dropdown-menu rounded-0 m-0">
									<a href=<c:url value = "/loadCartItems"></c:url>
										class="dropdown-item">Shopping Cart</a>
								</div>
							</div>
						</c:if>

						<c:if
							test="${sessionScope.user != null && sessionScope.user.role == 'user'}">
							<div class="nav-item dropdown">
								<a href="#" class="nav-link dropdown-toggle"
									data-toggle="dropdown">Pages</a>
								<div class="dropdown-menu rounded-0 m-0">
									<a href=<c:url value = "/loadCartItems"></c:url>
										class="dropdown-item">Shopping Cart</a>
								</div>
							</div>
						</c:if>

					</div>
					<form action="login" method="post" class="navbar-nav ml-auto py-0"<%--name="action" value="signin-form"--%>>
						<c:if test="${sessionScope.user == null}">
							<a href="${pageContext.request.contextPath}/views/login.jsp"
								class="nav-item nav-link">Login</a>
							<a href="${pageContext.request.contextPath}/views/register.jsp"
								class="nav-item nav-link">Register</a>
						</c:if>
						<c:if
							test="${sessionScope.user != null && sessionScope.user.role == 'user'}">
							<a class="nav-item nav-link">${sessionScope.user.username}</a>
							<a href="<%=request.getContextPath()%>/profile-user"
								class="nav-item nav-link">Hồ sơ cá nhân</a>
							<a href="<%=request.getContextPath()%>/views/resetpassword.jsp"
								class="nav-item nav-link">Đổi mật khẩu</a>
							<a href="logout" class="nav-item nav-link">Đăng xuất</a>
						</c:if>
					</form>
				</div>
			</nav>
			<div id="header-carousel" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active" style="height: 410px;">
						<img class="img-fluid"
							src="https://o.rada.vn/data/image/2021/01/29/Sach-700.jpg"
							alt="Image">
						<div
							class="carousel-caption d-flex flex-column align-items-center justify-content-center">
							<div class="p-3" style="max-width: 700px;"></div>
						</div>
					</div>
					<div class="carousel-item" style="height: 410px;">
						<img class="img-fluid"
							src="https://cdn.hoanghamobile.com/tin-tuc/wp-content/uploads/2023/08/nhung-cau-noi-hay-ve-sach-7.jpg"
							alt="Image">
						<div
							class="carousel-caption d-flex flex-column align-items-center justify-content-center">
							<div class="p-3" style="max-width: 700px;"></div>
						</div>
					</div>
				</div>
				<a class="carousel-control-prev" href="#header-carousel"
					data-slide="prev">
					<div class="btn btn-dark" style="width: 45px; height: 45px;">
						<span class="carousel-control-prev-icon mb-n2"></span>
					</div>
				</a> <a class="carousel-control-next" href="#header-carousel"
					data-slide="next">
					<div class="btn btn-dark" style="width: 45px; height: 45px;">
						<span class="carousel-control-next-icon mb-n2"></span>
					</div>
				</a>
			</div>
		</div>
	</div>
</div>
<!-- Navbar End -->
<%--Hiển thị 5 tìm kiếm gần đây nhất--%>
<script>
	// Kiểm tra xem localStorage có sẵn không
	let storageAvailable = typeof (Storage) !== "undefined";

	// Khởi tạo searchHistory từ localStorage nếu có, ngược lại thì là mảng rỗng
	let searchHistory = storageAvailable
			&& localStorage.getItem("searchHistory") ? JSON.parse(localStorage
			.getItem("searchHistory")) : [];

	document
			.getElementById("searchForm")
			.addEventListener(
					"submit",
					function(event) {
						// Ngăn chặn sự kiện submit mặc định của form
						event.preventDefault();

						let searchTerm = document.getElementById("searchInput").value
								.trim();

						if (searchTerm !== "") {
							let existingIndex = searchHistory
									.indexOf(searchTerm);

							if (existingIndex !== -1) {
								searchHistory.unshift(searchHistory.splice(
										existingIndex, 1)[0]);
							} else {
								searchHistory.unshift(searchTerm);

								if (searchHistory.length > 5) {
									searchHistory.pop();
								}
							}

							updateSearchHistory();

							// Lưu searchHistory vào localStorage
							if (storageAvailable) {
								localStorage.setItem("searchHistory", JSON
										.stringify(searchHistory));
							}

							document.getElementById("searchInput").value = ""; // Clear the input after submit

							// Chuyển form đến servlet sau khi đã cập nhật searchHistory
							window.location.href = "${pageContext.request.contextPath}/search?searchInput="
									+ encodeURIComponent(searchTerm);
						}
					});

	function onSearchSubmit() {
		let searchTerm = document.getElementById("searchInput").value.trim();

		if (searchTerm !== "") {
			let existingIndex = searchHistory.indexOf(searchTerm);

			if (existingIndex !== -1) {
				searchHistory
						.unshift(searchHistory.splice(existingIndex, 1)[0]);
			} else {
				searchHistory.unshift(searchTerm);

				if (searchHistory.length > 5) {
					searchHistory.pop();
				}
			}

			updateSearchHistory();

			// Lưu searchHistory vào localStorage
			if (storageAvailable) {
				localStorage.setItem("searchHistory", JSON
						.stringify(searchHistory));
			}

			document.getElementById("searchInput").value = ""; // Clear the input after submit

			// Chuyển form đến servlet sau khi đã cập nhật searchHistory
			window.location.href = "${pageContext.request.contextPath}/search?searchInput="
					+ encodeURIComponent(searchTerm);
		}

		return false; // Ngăn chặn sự kiện submit mặc định của form
	}

	function onHistoryItemClick(index) {
		let selectedTerm = searchHistory[index];

		if (selectedTerm) {
			// Set giá trị của ô input là mục đã chọn
			document.getElementById("searchInput").value = selectedTerm;

			// Di chuyển mục đã chọn lên đầu danh sách
			searchHistory.unshift(searchHistory.splice(index, 1)[0]);

			// Cập nhật lịch sử tìm kiếm
			updateSearchHistory();

			// Chuyển hướng đến servlet
			window.location.href = "${pageContext.request.contextPath}/search?searchInput="
					+ encodeURIComponent(selectedTerm);
		}
	}

	function updateSearchHistory() {
		let historyList = document.getElementById("searchHistoryList");
		historyList.innerHTML = "";

		for (let i = 0; i < searchHistory.length; i++) {
			let listItem = document.createElement("li");
			let link = document.createElement("a"); // Create an anchor element
			link.textContent = searchHistory[i];
			link.setAttribute("href", "javascript:onHistoryItemClick(" + i
					+ ")");
			listItem.appendChild(link);
			historyList.appendChild(listItem);
		}
	}

	// Thêm sự kiện onfocus cho ô input
	document.getElementById("searchInput").addEventListener("focus",
			function() {
				updateSearchHistory();
			});
</script>

