<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh sách nhà xuất bản</title>
</head>
<body>
	<div class="main-content">
		<form action="<c:url value='/admin-publisher'/>" id="formSubmit"
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
							<li class="active">Danh sách nhà xuất bản</li>
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
												data-toggle="tooltip" title='Thêm NXB'
												href='<c:url value="/admin-publisher/create"/>'> <span>
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
													<th>Tên Nhà xuất bản</th>
													<th>Mô tả</th>
													<th>Thao tác</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="item" items="${list_publishers}">
													<tr>
														<td>${item.publisherID}</td>
														<td>${item.publisherName}</td>
														<td>${item.publisherDescription}</td>
														<td><a class="btn btn-sm btn-primary btn-edit"
															data-toggle="tooltip" title="Sửa NXB"
															href='<c:url value="/admin-publisher/update?publisherID=${item.publisherID}"/>'>
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