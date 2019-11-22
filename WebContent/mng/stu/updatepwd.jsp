<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<jsp:include page="../../icd_meta.jsp"></jsp:include>
<title>卓讯微商城-后台管理</title>
<jsp:include page="../../icd_css.jsp"></jsp:include>

</head>

<body class="hold-transition skin-green sidebar-mini fixed">
	<div class="wrapper">
		<!--标题栏 -->
		<jsp:include page="../icd_title.jsp"></jsp:include>
		<!-- 左侧菜单栏 -->
		<jsp:include page="../icd_stumenu.jsp"></jsp:include>
		<!-- 主体内容开始-->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					学生修改密码 <small> <jsp:include page="../icd_time.jsp"></jsp:include>
					</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="./main.html"><i class="fa fa-home"></i> 首页</a></li>
					<li><a href="#">用户密码</a></li>
					<li class="active"><a href="javascript:;">修改密码</a></li>
				</ol>
			</section>

			<!--主内容 -->
			<section class="content">
				<!-- right column -->
				<div class="col-md-12">
					<!-- Horizontal Form -->
					<div class="box box-info" style="border-radius: 12px;">
						<div class="box-header with-border">
							<h3 class="box-title">修改密码</h3>
						</div>
						<!-- /.box-header -->
						<!-- form start -->
						<form class="form-horizontal" action="${ctx}/mng/stu/pwd"
							method="post">
							<div class="box-body">
								<div class="form-group" style="color: red; text-align: center;">${msg}</div>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">原密码</label>

									<div class="col-sm-10">
										<input type="password" class="form-control" id="inputEmail3"
											name="oldpwd" placeholder="请输入原密码">
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">新密码</label>

									<div class="col-sm-10">
										<input type="password" class="form-control" id="inputEmail3"
											name="newpwd" placeholder="请输入新密码">
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">确认密码</label>

									<div class="col-sm-10">
										<input type="password" class="form-control" id="inputEmail3"
											name="okpwd" placeholder="请输入确认密码">
									</div>
								</div>
							</div>
							<!-- /.box-body -->
							<div class="box-footer">
								<button type="reset" class="btn btn-default">重置</button>
								<button type="submit" class="btn btn-info pull-right">确定</button>
							</div>
							<!-- /.box-footer -->
						</form>
					</div>
			</section>
			<!-- /.主体内容结束 -->
		</div>
		<!-- /.content-wrapper -->
		<jsp:include page="../icd_buttom.jsp"></jsp:include>
	</div>
	<!-- ./wrapper -->
	<jsp:include page="../../icd_js.jsp"></jsp:include>
</body>

</html>