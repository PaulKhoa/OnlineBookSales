<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Publisher</title>
</head>
<body>
	<div class="main-content">
		<div class="main-content-inner">
			<div class="breadcrumbs ace-save-state" id="breadcrumbs">
				<ul class="breadcrumb">
					<li><i class="ace-icon fa fa-home home-icon"></i> <a href='<c:url value="/admin-trang-chu"/>'>Trang
							chủ</a></li>
				</ul>
				<!-- /.breadcrumb -->
			</div>
			<div class="modal-dialog">
				<div class="modal-content">
					<form action="create" method="post" enctype="multipart/form-data">
						<div class="modal-header">
							<h4 class="modal-title">Add Publisher</h4>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label>Tên nhà xuất bản</label> <input name="publisherName" type="text"
									class="form-control" required>
								<label>Mô tả</label> <input name="publisherDescription" type="text"
									class="form-control" required>
							</div>
						</div>
						<div class="modal-footer">
							<a href=<c:url value = "/admin-publisher"></c:url>> <input
								type="button" class="btn btn-default" data-dismiss="modal"
								value="Cancel"></a> <input type="submit"
								class="btn btn-success" value="Add">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>