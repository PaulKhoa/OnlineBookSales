<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<head>
</head>
</head>
<body>
	<div id="sidebar" class="sidebar responsive  ace-save-state">
		<script type="text/javascript">
			try {
				ace.settings.loadState('sidebar')
			} catch (e) {
			}
		</script>

		<div class="sidebar-shortcuts" id="sidebar-shortcuts">
			<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
				<button class="btn btn-success">
					<i class="ace-icon fa fa-signal"></i>
				</button>

				<button class="btn btn-info">
					<i class="ace-icon fa fa-pencil"></i>
				</button>

				<button class="btn btn-warning">
					<i class="ace-icon fa fa-users"></i>
				</button>

				<button class="btn btn-danger">
					<i class="ace-icon fa fa-cogs"></i>
				</button>
			</div>

			<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
				<span class="btn btn-success"></span> <span class="btn btn-info"></span>

				<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
			</div>
		</div>
		<!-- /.sidebar-shortcuts -->


		<ul class="nav nav-list">
			<li class="active"><a
				href='<c:url value="/admin-trang-chu"/>'> <i
					class="menu-icon fa fa-tachometer"></i> <span class="menu-text">
						Dashboard </span>
			</a> <b class="arrow"></b></li>

			<li class=""><a href="#" class="dropdown-toggle"> <i
					class="menu-icon fa fa-desktop"></i> <span class="menu-text">
						UI &amp; Elements </span> <b class="arrow fa fa-angle-down"></b>
			</a> <b class="arrow"></b>

				<ul class="submenu">
					<li class=""><a href="#" class="dropdown-toggle"> <i
							class="menu-icon fa fa-caret-right"></i> Layouts <b
							class="arrow fa fa-angle-down"></b>
					</a> <b class="arrow"></b>

						<ul class="submenu">
							<li class=""><a href="top-menu.html"> <i
									class="menu-icon fa fa-caret-right"></i> Top Menu
							</a> <b class="arrow"></b></li>

							<li class=""><a href="two-menu-1.html"> <i
									class="menu-icon fa fa-caret-right"></i> Two Menus 1
							</a> <b class="arrow"></b></li>

							<li class=""><a href="two-menu-2.html"> <i
									class="menu-icon fa fa-caret-right"></i> Two Menus 2
							</a> <b class="arrow"></b></li>

							<li class=""><a href="mobile-menu-1.html"> <i
									class="menu-icon fa fa-caret-right"></i> Default Mobile Menu
							</a> <b class="arrow"></b></li>

							<li class=""><a href="mobile-menu-2.html"> <i
									class="menu-icon fa fa-caret-right"></i> Mobile Menu 2
							</a> <b class="arrow"></b></li>

							<li class=""><a href="mobile-menu-3.html"> <i
									class="menu-icon fa fa-caret-right"></i> Mobile Menu 3
							</a> <b class="arrow"></b></li>
						</ul></li>

					<li class=""><a href="typography.html"> <i
							class="menu-icon fa fa-caret-right"></i> Typography
					</a> <b class="arrow"></b></li>

					<li class=""><a href="elements.html"> <i
							class="menu-icon fa fa-caret-right"></i> Elements
					</a> <b class="arrow"></b></li>

					<li class=""><a href="buttons.html"> <i
							class="menu-icon fa fa-caret-right"></i> Buttons &amp; Icons
					</a> <b class="arrow"></b></li>

					<li class=""><a href="content-slider.html"> <i
							class="menu-icon fa fa-caret-right"></i> Content Sliders
					</a> <b class="arrow"></b></li>

					<li class=""><a href="treeview.html"> <i
							class="menu-icon fa fa-caret-right"></i> Treeview
					</a> <b class="arrow"></b></li>

					<li class=""><a href="jquery-ui.html"> <i
							class="menu-icon fa fa-caret-right"></i> jQuery UI
					</a> <b class="arrow"></b></li>

					<li class=""><a href="nestable-list.html"> <i
							class="menu-icon fa fa-caret-right"></i> Nestable Lists
					</a> <b class="arrow"></b></li>

					<li class=""><a href="#" class="dropdown-toggle"> <i
							class="menu-icon fa fa-caret-right"></i> Three Level Menu <b
							class="arrow fa fa-angle-down"></b>
					</a> <b class="arrow"></b>

						<ul class="submenu">
							<li class=""><a href="#"> <i
									class="menu-icon fa fa-leaf green"></i> Item #1
							</a> <b class="arrow"></b></li>

							<li class=""><a href="#" class="dropdown-toggle"> <i
									class="menu-icon fa fa-pencil orange"></i> 4th level <b
									class="arrow fa fa-angle-down"></b>
							</a> <b class="arrow"></b>

								<ul class="submenu">
									<li class=""><a href="#"> <i
											class="menu-icon fa fa-plus purple"></i> Add Product
									</a> <b class="arrow"></b></li>

									<li class=""><a href="#"> <i
											class="menu-icon fa fa-eye pink"></i> View Products
									</a> <b class="arrow"></b></li>
								</ul></li>
						</ul></li>
				</ul></li>

			<li class=""><a href="#" class="dropdown-toggle"> <i
					class="menu-icon fa fa-list"></i> <span class="menu-text">
						Tables </span> <b class="arrow fa fa-angle-down"></b>
			</a> <b class="arrow"></b>

				<ul class="submenu">
					<li class=""><a href="tables.html"> <i
							class="menu-icon fa fa-caret-right"></i> Simple &amp; Dynamic
					</a> <b class="arrow"></b></li>

					<li class=""><a href="jqgrid.html"> <i
							class="menu-icon fa fa-caret-right"></i> jqGrid plugin
					</a> <b class="arrow"></b></li>
				</ul></li>

			<li class=""><a href="#" class="dropdown-toggle"> <i
					class="menu-icon fa fa-pencil-square-o"></i> <span
					class="menu-text"> Forms </span> <b class="arrow fa fa-angle-down"></b>
			</a> <b class="arrow"></b>

				<ul class="submenu">
					<li class=""><a href="form-elements.html"> <i
							class="menu-icon fa fa-caret-right"></i> Form Elements
					</a> <b class="arrow"></b></li>

					<li class=""><a href="form-elements-2.html"> <i
							class="menu-icon fa fa-caret-right"></i> Form Elements 2
					</a> <b class="arrow"></b></li>

					<li class=""><a href="form-wizard.html"> <i
							class="menu-icon fa fa-caret-right"></i> Wizard &amp; Validation
					</a> <b class="arrow"></b></li>

					<li class=""><a href="wysiwyg.html"> <i
							class="menu-icon fa fa-caret-right"></i> Wysiwyg &amp; Markdown
					</a> <b class="arrow"></b></li>

					<li class=""><a href="dropzone.html"> <i
							class="menu-icon fa fa-caret-right"></i> Dropzone File Upload
					</a> <b class="arrow"></b></li>
				</ul></li>

			<li class=""><a href="widgets.html"> <i
					class="menu-icon fa fa-list-alt"></i> <span class="menu-text">
						Widgets </span>
			</a> <b class="arrow"></b></li>

			<li class=""><a href="calendar.html"> <i
					class="menu-icon fa fa-calendar"></i> <span class="menu-text">
						Calendar <span class="badge badge-transparent tooltip-error"
						title="2 Important Events"> <i
							class="ace-icon fa fa-exclamation-triangle red bigger-130"></i>
					</span>
				</span>
			</a> <b class="arrow"></b></li>

			<li class=""><a href="gallery.html"> <i
					class="menu-icon fa fa-picture-o"></i> <span class="menu-text">
						Gallery </span>
			</a> <b class="arrow"></b></li>

			<li class=""><a href="#" class="dropdown-toggle"> <i
					class="menu-icon fa fa-tag"></i> <span class="menu-text">
						More Pages </span> <b class="arrow fa fa-angle-down"></b>
			</a> <b class="arrow"></b>

				<ul class="submenu">
					<li class=""><a href="profile.html"> <i
							class="menu-icon fa fa-caret-right"></i> User Profile
					</a> <b class="arrow"></b></li>

					<li class=""><a href="inbox.html"> <i
							class="menu-icon fa fa-caret-right"></i> Inbox
					</a> <b class="arrow"></b></li>

					<li class=""><a href="pricing.html"> <i
							class="menu-icon fa fa-caret-right"></i> Pricing Tables
					</a> <b class="arrow"></b></li>

					<li class=""><a href="invoice.html"> <i
							class="menu-icon fa fa-caret-right"></i> Invoice
					</a> <b class="arrow"></b></li>

					<li class=""><a href="timeline.html"> <i
							class="menu-icon fa fa-caret-right"></i> Timeline
					</a> <b class="arrow"></b></li>

					<li class=""><a href="email.html"> <i
							class="menu-icon fa fa-caret-right"></i> Email Templates
					</a> <b class="arrow"></b></li>

					<li class=""><a href="login.html"> <i
							class="menu-icon fa fa-caret-right"></i> Login &amp; Register
					</a> <b class="arrow"></b></li>
				</ul></li>

			<li class=""><a href="#" class="dropdown-toggle"> <i
					class="menu-icon fa fa-file-o"></i> <span class="menu-text">
						Other Pages <span class="badge badge-primary">5</span>
				</span> <b class="arrow fa fa-angle-down"></b>
			</a> <b class="arrow"></b>
		</ul>
		<!-- /.nav-list -->

		<ul class="nav nav-list">
			<li><a href="#" class="dropdown-toggle"> <i
					class="menu-icon fa fa-list-alt"></i> <span class="menu-text"></span>
					Quản lý Thể loại <b class="arrow fa fa-angle-down"></b>
			</a> <b class="arrow"></b>
				<ul class="submenu">
					<li><a href='<c:url value="/admin-category"/>'> <i
							class="menu-icon fa fa-caret-right"></i> <i
							class="fa fa-certificate "></i> Danh sách thể loại
					</a> <b class="arrow"></b> <a
						href='<c:url value="/admin-category/create"/>'> <i
							class="menu-icon fa fa-caret-right"></i> <i class="fa fa-plus "></i>
							Thêm thể loại
					</a></li>
				</ul></li>
		</ul>

		<ul class="nav nav-list">
			<li><a href="#" class="dropdown-toggle"> <i
					class="menu-icon fa fa-file-o"></i> <span class="menu-text"></span>
					Quản lý Sản phẩm <b class="arrow fa fa-angle-down"></b>
			</a> <b class="arrow"></b>
				<ul class="submenu">
					<li><a href='<c:url value="/admin-product?index=0"/>'> <i
							class="menu-icon fa fa-caret-right"></i> <i class="fa fa-book"></i>
							Danh sách sản phẩm
					</a> <b class="arrow"></b> <a
						href='<c:url value="/admin-product/create"/>'> <i
							class="menu-icon fa fa-caret-right"></i> <i class="fa fa-plus "></i>
							Thêm sản phẩm
					</a></li>
				</ul></li>
		</ul>
		<ul class="nav nav-list">
			<li><a href="#" class="dropdown-toggle"> <i
					class="menu-icon fa fa-pencil-square-o"></i> <span
					class="menu-text"></span> Quản lý Nhà xuất bản <b
					class="arrow fa fa-angle-down"></b>
			</a> <b class="arrow"></b>
				<ul class="submenu">
					<li><a href='<c:url value="/admin-publisher"/>'> <i
							class="menu-icon fa fa-caret-right"></i> <i
							class="fa fa-leanpub "></i> Danh sách nhà xuất bản
					</a> <b class="arrow"></b> <a
						href='<c:url value="/admin-publisher/create"/>'> <i
							class="menu-icon fa fa-caret-right"></i> <i class="fa fa-plus "></i>
							Thêm nhà xuất bản
					</a></li>
				</ul></li>
		</ul>
		<ul class="nav nav-list">
			<li><a href="#" class="dropdown-toggle"> <i
					class="menu-icon fa fa-desktop"></i> <span
					class="menu-text"></span> Quản lý Người dùng <b
					class="arrow fa fa-angle-down"></b>
			</a> <b class="arrow"></b>
				<ul class="submenu">
					<li><a href='<c:url value="/admin-user?index=0"/>'> <i
							class="menu-icon fa fa-caret-right"></i> <i class="fa fa-users"></i>
							Danh sách người dùng

					</a> <b class="arrow"></b> <a
						href='<c:url value="/admin-user/create"/>'> <i
							class="menu-icon fa fa-caret-right"></i> <i
							class="fa fa-user-plus"></i> Thêm người dùng

					</a></li>
				</ul></li>
		</ul>
		<ul class="nav nav-list">
			<li><a href="#" class="dropdown-toggle"> <i
					class="menu-icon fa fa-list"></i> <span class="menu-text"></span>
					 Quản lý Đơn hàng <b class="arrow fa fa-angle-down"></b>
			</a> <b class="arrow"></b>
				<ul class="submenu">
					<li><a href='<c:url value="/admin-order?index=0"/>'> <i
							class="menu-icon fa fa-caret-right"></i> <i class="fa fa-reorder"></i>
							Danh sách tất cả đơn hàng

					</a> <b class="arrow"></b> <a
						href='<c:url value="/admin-order/xuly?index=0"/>'> <i
							class="menu-icon fa fa-caret-right"></i> <i
							class="fa fa-credit-card-alt"></i> Đơn hàng cần xử lý

					</a> <b class="arrow"></b> <a
						href='<c:url value="/admin-order/ship?index=0"/>'> <i
							class="menu-icon fa fa-caret-right"></i> <i class="fa fa-car"></i>
							Đơn hàng đang giao

					</a> <b class="arrow"></b> <a
						href='<c:url value="/admin-order/danhan?index=0"/>'> <i
							class="menu-icon fa fa-caret-right"></i> <i class="fa fa-child"></i>
							Đơn hàng đã nhận
					</a></li>
				</ul></li>
		</ul>

	</div>

</body>
