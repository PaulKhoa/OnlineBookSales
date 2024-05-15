<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh sách sản phẩm</title>
<style>
.page-link.active {
	background-color: green;
	color: white;
}
</style>
</head>
<body>
	<div class="main-content">
		<form action="<c:url value='/admin-product'/>" id="formSubmit"
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
							<li class="active">Danh sách sản phẩm</li>
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
							<div class="widget-box table-filter">
								<div class="table-btn-controls">
									<div class="pull-right tableTools-container">
										<div class="dt-buttons btn-overlap btn-group">
											<a flag="info"
												class="dt-button buttons-colvis btn btn-white btn-primary btn-bold"
												data-toggle="tooltip" title='Thêm sản phẩm'
												href='<c:url value="/admin-product/create"/>'> <span>
													<i class="fa fa-plus-circle bigger-110 purple"></i>
											</span>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="table-responsive">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th>ID</th>
													<th>Tên sản phẩm</th>
													<th>Tên tác giả</th>
													<th>Hình ảnh</th>
													<th>Mô tả</th>
													<th>Giá</th>
													<th>Thao tác</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="item" items="${list_product}">
													<tr>
														<td>${item.productId}</td>
														<td>${item.productName}</td>
														<td>${item.productAuthor}</td>
														<td><c:url
																value="/image?fname=product/${item.images}" var="imgUrl"></c:url>
															<img width="100px" height="120px" src="${imgUrl}"
															alt="Image"></td>
														<td>${item.description}</td>
														<td>${item.price}</td>


														<td><a class="btn btn-sm btn-primary btn-edit"
															data-toggle="tooltip" title="Sửa sản phẩm"
															href='<c:url value="/admin-product/update?productId=${item.productId}"/>'>
																<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
														</a> <a
															class="dt-button buttons-html5 btn btn-white btn-primary btn-bold"
															data-toggle="tooltip" title='Xóa sản phẩm'
															href='<c:url value="/admin-product/delete?productId=${item.productId}"/>'>
																<span> <i class="fa fa-trash-o bigger-110 pink"></i>
														</a> </span></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										<div class="clearfix">
											<div class="hint-text">
												<b>${count}</b> mục
											</div>
											<ul class="pagination">
												<li class="page-item"><c:choose>
														<c:when test="${index > 0}">
															<a
																href="<c:url value='/admin-product?index=${index-1}'></c:url>">Previous</a>
														</c:when>
														<c:otherwise>
															<span class="disabled">Previous</span>
														</c:otherwise>
													</c:choose></li>
												<c:forEach begin="0" end="${empty list_product ? 0 :sizepage-1}" var="item">												
													<li class="page-item"><c:choose>
															<c:when test="${item == index}">
																<a
																	href="<c:url value='/admin-product?index=${item}'></c:url>"
																	class="page-link active">${item}</a>
															</c:when>
															<c:otherwise>
																<a
																	href="<c:url value='/admin-product?index=${item}'></c:url>"
																	class="page-link">${item}</a>
															</c:otherwise>
														</c:choose></li>
												</c:forEach>
												<li class="page-item"><c:choose>
														<c:when test="${index < sizepage-1}">
															<a
																href="<c:url value='/admin-product?index=${index+1}'></c:url>"
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