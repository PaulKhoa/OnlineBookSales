<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cập nhật trạng thái đơn hàng</title>
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
					<form action="updateStatus" method="post" enctype="multipart/form-data">
						<div class="modal-header">
							<h4 class="modal-title">Cập nhật trạng thái đơn hàng</h4>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label>Mã đơn hàng</label> <input value="${oldorder.orderID}"
									name="orderID" type="text" class="form-control" required
									readonly="readonly">
							</div>
							<div class="form-group">
								<label>Ngày đặt đơn</label> <input value="${oldorder.orderDate}"
									name="orderDate" type="text" class="form-control" required
									readonly="readonly">
							</div>
							<div>
								<label>Trạng thái</label> <select name="status"
									class="form-control" required>
									<option value="Đang xử lý">Đang xử lý</option>
									<option value="Đang giao hàng">Đang giao hàng</option>
									<option value="Đã nhận được hàng">Đã nhận được hàng</option>
								</select>
							</div>

						</div>
						<div class="modal-footer">
							<a href=<c:url value = "/admin-order?index=0"></c:url>><input
								type="button" class="btn btn-default" data-dismiss="modal"
								value="Đóng"></a> <input type="submit"
								class="btn btn-success" value="Cập nhật">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>