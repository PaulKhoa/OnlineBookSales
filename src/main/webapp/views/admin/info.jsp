<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Infomation</title>
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
					<div class="modal-header">
						<h4 class="modal-title">Add Category</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<%
								String str = request.getParameter("message");
								if (str.isEmpty()) {
									
								} else {
									out.println("Chuỗi không rỗng");
								}
							%>

						</div>
					</div>
					<div class="modal-footer">
						<a href=<c:url value = "/admin-category"></c:url>> <input
							type="button" class="btn btn-default" data-dismiss="modal"
							value="Cancel"></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>