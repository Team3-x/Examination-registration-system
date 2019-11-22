<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	<header class="main-header"> <!-- Logo --> <a href="main.html"
		class="logo"> <!-- mini logo for sidebar mini 50x50 pixels --> <span
		class="logo-mini"><b>招生考试</b></span> <!-- logo for regular state and mobile devices -->
		<span class="logo-lg"><b>招生考试</b>管理系统</span>
	</a> <!-- Header Navbar --> <nav class="navbar navbar-static-top"
		role="navigation"> <!-- Sidebar toggle button--> <a href="#"
		class="sidebar-toggle" data-toggle="offcanvas" role="button"> <span
		class="sr-only">切换侧边栏</span>
	</a> <!-- Navbar Right Menu -->
	<div class="navbar-custom-menu">
		<ul class="nav navbar-nav">
			<!-- User Account Menu -->
			<li class="dropdown user user-menu">
				<!-- Menu Toggle Button --> <a href="#" class="dropdown-toggle"
				data-toggle="dropdown"> <!-- The user image in the navbar--> <img
					src="${ctx}/adminlte/img/avatar04.png" class="user-image"
					alt="User Image"> <!-- hidden-xs hides the username on small devices so only the image appears. -->
					<span class="hidden-xs">${stu_regist.loginname}</span>
			</a>
				<ul class="dropdown-menu">
					<!-- The user image in the menu -->
					<li class="user-header"><img
						src="${ctx}/adminlte/img/avatar04.png" class="img-circle"
						alt="User Image">
						<p>
							- Java Developer <small>${stu_regist.loginname}</small>
						</p></li>
					<!-- Menu Body -->
					<li class="user-body">
						<div class="row">
							<div class="col-xs-4 text-center">
								<a href="#detailModal" data-toggle="modal"><i
									class="fa fa-info-circle"></i> 详情</a>
							</div>
							<div class="col-xs-4 text-center">
								<a href="#exitModal" data-toggle="modal"><i
									class="fa fa-power-off"></i> 退出</a>
							</div>
						</div>
					</li>
				</ul>
			</li>
			<li class="dropdown tasks tasks-menu"><a href="#"
				class="dropdown-toggle" data-toggle="dropdown"><i
					class="fa fa-gears"></i></a>
				<ul class="dropdown-menu" style="width: 240px" id="skin-menu"></ul>
			</li>
		</ul>
	</div>
	</nav> </header>
	<!--详情模态框开始--->
	<div class="modal modal-primary fade" id="detailModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">查看用户详情</h4>
				</div>
				<div class="modal-body">
					<table class="table   table-bordered table-hover"
						style="color: black; text-align: center;">
						<tr>
							<td>用户名</td>
							<td>${stu_regist.loginname}</td>
						</tr>
						<tr>
							<td>密码</td>
							<td>${stu_regist.pwd}</td>
						</tr>
						<tr>
							<td>注册日期</td>
							<td>${stu_regist.register_time}</td>
						</tr>
					</table>
				</div>
				<div class="modal-footer">

					<button type="button" class="btn btn-outline" data-dismiss="modal">确认</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!--详情模态框结束--->


	<!--退出模态框开始--->
	<div class="modal modal-success fade" id="exitModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">退出对话框</h4>
				</div>
				<div class="modal-body">
					<p>是否确认退出&hellip;</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-outline pull-left"
						data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-outline" id="btn_logout">确认</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!--退出模态框结束--->
</body>
</html>