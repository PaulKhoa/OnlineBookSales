<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh sách thể loại</title>
</head>
<body>
	<div class="main-content">
		<form action="<c:url value='/admin-category'/>" id="formSubmit"	method="post">
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
							<li class="active">Danh sách thể loại</li>
						</ul><!-- /.breadcrumb -->

					</div>
					<!-- Lịch sử tìm kiếm -->
			

				<div class="page-content">
					<div class="row">
						<div class="col-xs-12">
							<div class="widget-box table-filter">
								<div class="table-btn-controls">
									<div class="pull-right tableTools-container">
										<div class="dt-buttons btn-overlap btn-group">
											<a flag="info"
												class="dt-button buttons-colvis btn btn-white btn-primary btn-bold"
												data-toggle="tooltip" title='Thêm thể loại'
												href='<c:url value="/admin-category/create"/>'> <span>
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
													<th>Tên thể loại</th>
													<th>Thao tác</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="item" items="${list_categories}">
													<tr>
														<td>${item.categoryId}</td>
														<td>${item.categoryName}</td>
														<td><a class="btn btn-sm btn-primary btn-edit"
															data-toggle="tooltip" title="Sửa thể loại"
															href='<c:url value="/admin-category/update?categoryId=${item.categoryId}"/>'>
																<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
														</a> </td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
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