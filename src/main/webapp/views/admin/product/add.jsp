<%@page import="iostart.Services.impl.CategoryServices"%>
<%@page import="iostart.util.SessionUtils"%>
<%@page import="iostart.Services.ICategoryServices"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@page import="iostart.util.SessionUtils"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Category</title>
</head>
<body>
	<div class="main-content">
		<div class="main-content-inner">
			<div class="breadcrumbs ace-save-state" id="breadcrumbs">
				<ul class="breadcrumb">
					<li><i class="ace-icon fa fa-home home-icon"></i> <a
						href='<c:url value="/admin-trang-chu"/>'>Trang chủ</a></li>
				</ul>
				<!-- /.breadcrumb -->
			</div>
			<div class="modal-dialog">
				<div class="modal-content">
					<form action="create" method="post" enctype="multipart/form-data">
						<div class="modal-header">
							<h4 class="modal-title">Add Product</h4>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label>Tên sản phẩm</label> <input name="productName"
									type="text" class="form-control" required>
							</div>
							<div class="form-group">
								<label>Tác giả</label> <input name="productAuthor" type="text"
									class="form-control" required>
							</div>
							<div class="form-group">
								<div class="form-group mt-3" style="font-weight: bold;">
									<label class="mr-2">Hình ảnh</label> <input type="file"
										name="images">
								</div>
							</div>
							<div class="form-group">
								<label>Mô tả</label> <input name="description" type="text"
									class="form-control" required>
							</div>
							<div class="form-group">
								<label>Nhà xuất bản</label> <select name="publisher"
									class="form-control" required>
									<c:forEach var="item" items="${list_publishers}">
										<option value="${item.publisherID}">${item.publisherName}</option>
									</c:forEach>
								</select>
							</div>
							<label>Thể loại <br></label>
							<div class="form-group">
								<select name="category" multiple="multiple">
									<c:forEach var="item" items="${list_categories}">
										<option value="${item.categoryId}">${item.categoryName}</option>
									</c:forEach>
								</select>
							</div>

							<div class="form-group">
								<label>Giá</label> <input name="price" type="text"
									class="form-control" required>
							</div>
						</div>
						<div class="modal-footer">
							<a href=<c:url value = "/admin-product"></c:url>>
							</a>
								<input
								type="button" class="btn btn-default" data-dismiss="modal"
								value="Cancel"></a> <input type="submit"
								class="btn btn-success" value="Cread">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>