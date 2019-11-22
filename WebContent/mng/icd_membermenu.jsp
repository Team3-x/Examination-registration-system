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
				class="fa fa-shopping-cart"></i> <span> 基础信息管理</span> <span
				class="pull-right-container"> <i
					class="fa fa-angle-left pull-right"></i>
			</span> </a>
			<ul class="treeview-menu">
				<li><a href="${ctx}/mng/member/list"><i
						class="fa fa-reorder"></i> 管理员管理</a></li>
				<li><a href="${ctx}/mng/member/loginrecoder"><i
						class="fa fa-reorder"></i> 查看登录记录</a></li>
			</ul></li>

		<li class="treeview"><a href="#"><i class="fa fa-users"></i>
				<span>报考信息管理</span> <span class="pull-right-container"> <i
					class="fa fa-angle-left pull-right"></i>
			</span> </a>
			<ul class="treeview-menu">
				<li><a href="${ctx}/mng/member/phaselist"><i
						class="fa fa-files-o"></i> 阶段信息</a></li>
				<li><a href="#"><i class="fa fa-list"></i> 报考学校信息</a></li>
			</ul></li>


		<li class="treeview"><a href="#"><i class="fa fa-database"></i>
				<span>学生管理</span> <span class="pull-right-container"> <i
					class="fa fa-angle-left pull-right"></i>
			</span> </a>
			<ul class="treeview-menu">
				<li><a href="#"><i class="fa fa-commenting-o"></i> 查看已报名学生
				</a></li>
				<li><a href="${ctx}/mng/member/stupwdlist"><i class="fa fa-commenting-o"></i> 学生密码清零 </a></li>
			</ul></li>


	</ul>
	<!-- /.sidebar-menu --> </section> <!-- /.sidebar --> </aside>
</body>
</html>