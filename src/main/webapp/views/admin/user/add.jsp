<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create User</title>
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
							<h4 class="modal-title">Add User</h4>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label>Tên tài khoản</label> <input name="username" type="text"
									class="form-control" required>
							</div>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label>Họ tên</label> <input name="fullname" type="text"
									class="form-control" required>
							</div>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label>Email</label> <input name="email" type="text"
									class="form-control" required>
							</div>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label>Vai trò</label> <select name="role" class="form-control"
									required>
									<option value="user">user</option>
									<option value="admin">admin</option>
								</select>
							</div>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label>Mật khẩu</label> <input name="password" type="password"
									class="form-control" required> <input type="checkbox"
									id="showPassword" /> <label for="showPassword">Hiển
									thị mật khẩu</label>
							</div>
						</div>


						<div class="modal-footer">
							<a href=<c:url value = "/admin-users"></c:url>> <input
								type="button" class="btn btn-default" data-dismiss="modal"
								value="Cancel"></a> <input type="submit"
								class="btn btn-success" value="Add">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
<script>
	function togglePassword() {
    const input = document.querySelector("input[name='password']");
    const checkbox = document.querySelector("#showPassword");

    if (checkbox.checked) {
        input.type = "text";
    } else {
        input.type = "password";
    }
}

document.querySelector("#showPassword").addEventListener("click", togglePassword);
</script>
</body>

</html>