<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	<aside class="main-sidebar"> <!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar" id="scrollspy"> <!-- Sidebar Menu -->
	<ul class="sidebar-menu">
		<li class="header"><i class="fa fa-th"></i> 功能菜单</li>

		<li class="treeview"><a href="#"><i
				class="fa fa-shopping-cart"></i> <span>学生信息管理</span> <span
				class="pull-right-container"> <i
					class="fa fa-angle-left pull-right"></i>
			</span> </a>
			<ul class="treeview-menu">
				<li><a href="list02.html"><i class="fa fa-reorder"></i>
						学生报考信息管理</a></li>
				<li><a href="list.html"><i class="fa fa-cube"></i>上传照片</a></li>
				<li><a href="#"><i class="fa fa-reorder"></i> 成绩查询</a></li>
				<li><a href="list.html"><i class="fa fa-cube"></i> 录取查询</a></li>
			</ul></li>

		<li class="treeview"><a href="#"><i class="fa fa-users"></i>
				<span>用户管理</span> <span class="pull-right-container"> <i
					class="fa fa-angle-left pull-right"></i>
			</span> </a>
			<ul class="treeview-menu">
				<li><a href="${ctx}/mng/stu/updatepwd.jsp"><i
						class="fa fa-files-o"></i> 修改密码 </a></li>
			</ul></li>
	</ul>
	<!-- /.sidebar-menu --> </section> <!-- /.sidebar --> </aside>
</body>
</html>