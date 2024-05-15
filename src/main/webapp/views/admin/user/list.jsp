<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh sách người dùng</title>
</head>
<body>
	<div class="main-content">
		<form action="<c:url value='/admin-user'/>" id="formSubmit"
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
							<li class="active">Danh sách người dùng</li>
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
												data-toggle="tooltip" title='Thêm tài khoản'
												href='<c:url value="/admin-user/create"/>'> <span>
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
													<th>Tên tài khoản</th>
													<th>Họ tên</th>
													<th>Địa chỉ</th>
													<th>Số điện thoại</th>
													<th>Email</th>
													<th>Vai trò</th>
													<th>Thao tác</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="item" items="${list_users}">
													<tr>
														<td>${item.userID}</td>
														<td>${item.username}</td>
														<td>${item.fullname}</td>
														<td>${item.address}</td>
														<td>${item.phone}</td>
														<td>${item.email}</td>
														<td>${item.role}</td>
														<td>
														<c:if test="${item.role eq 'admin'}">
																<a class="btn btn-sm btn-primary btn-edit"
															data-toggle="tooltip" title="Sửa thông tin"
															href='<c:url value="/admin-user/update?userID=${item.userID}"/>'> <i
																class="fa fa-pencil-square-o" aria-hidden="true"></i>
														</a> 
															</c:if></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
											<div class="clearfix">
											<div class="hint-text">
												Showing <b>6</b> out of <b>${count}</b> entries
											</div>
											<ul class="pagination">
												<li class="page-item"><c:choose>
														<c:when test="${index > 0}">
															<a
																href="<c:url value='/admin-user?index=${index-1}'></c:url>">Previous</a>
														</c:when>
														<c:otherwise>
															<span class="disabled">Previous</span>
														</c:otherwise>
													</c:choose></li>
												<c:forEach begin="0" end="${empty list_users ? 0 :sizepage-1}" var="item">
													<li class="page-item"><c:choose>
															<c:when test="${item == index}">
																<a
																	href="<c:url value='/admin-user?index=${item}'></c:url>"
																	class="page-link active">${item}</a>
															</c:when>
															<c:otherwise>
																<a
																	href="<c:url value='/admin-user?index=${item}'></c:url>"
																	class="page-link">${item}</a>
															</c:otherwise>
														</c:choose></li>
												</c:forEach>
												<li class="page-item"><c:choose>
														<c:when test="${index < sizepage-1}">
															<a
																href="<c:url value='/admin-user?index=${index+1}'></c:url>"
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