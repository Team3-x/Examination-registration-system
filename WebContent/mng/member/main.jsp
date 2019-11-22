<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../../icd_meta.jsp"></jsp:include>
<title>招生考试系统-后台管理</title>
<jsp:include page="../../icd_css.jsp"></jsp:include>
</head>
<!-- 主体内容 -->
<body class="hold-transition skin-green sidebar-mini fixed">
	<div class="wrapper">
		<!-- 标题栏 -->
		<jsp:include page="../icd_member_title.jsp"></jsp:include>

		<!-- 左侧菜单栏 -->
		<jsp:include page="../icd_membermenu.jsp"></jsp:include>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					主界面<small><jsp:include page="../icd_time.jsp"></jsp:include></small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="./main.html"><i class="fa fa-home"></i> 首页</a></li>
					<li><a href="#">主界面</a></li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<!---组合查询-->
				<!-- Small boxes (Stat box) -->
				<div class="row" style="margin-top: 50px;">
					<div class="col-lg-3 col-xs-6" style="margin-left: 80px">
						<!-- small box -->
						<div class="small-box bg-aqua">
							<div class="inner">
								<h3>管理员管理</h3>

								<p>Member Manager</p>
							</div>
							<div class="icon">
								<i class="fa fa-shopping-cart"></i>
							</div>
							<a href="${ctx}/mng/member/list" class="small-box-footer">
								More info <i class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-xs-6" style="margin-left: 80px">
						<!-- small box -->
						<div class="small-box bg-green">
							<div class="inner">
								<h3>阶段信息管理</h3>

								<p>Phase Manager</p>
							</div>
							<div class="icon">
								<i class="ion ion-stats-bars"></i>
							</div>
							<a href="${ctx}/mng/member/phaselist" class="small-box-footer">
								More info <i class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-xs-6" style="margin-left: 80px">
						<!-- small box -->
						<div class="small-box bg-yellow">
							<div class="inner">
								<h3>学校管理</h3>

								<p>School Manager</p>
							</div>
							<div class="icon">
								<i class="ion ion-person-add"></i>
							</div>
							<a href="#" class="small-box-footer"> More info <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-xs-6"
						style="margin-top: 30px; margin-left: 80px">
						<!-- small box -->
						<div class="small-box bg-red">
							<div class="inner">
								<h3>
									报名学生信息<sup style="font-size: 20px"></sup>
								</h3>

								<p>Member Manager</p>
							</div>
							<div class="icon">
								<i class="fa fa-shopping-cart"></i>
							</div>
							<a href="#" class="small-box-footer"> More info <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-xs-6"
						style="margin-top: 30px; margin-left: 80px">
						<!-- small box -->
						<div class="small-box bg-aqua">
							<div class="inner">
								<h3>学生密码清零</h3>

								<p>Reset  Student Password</p>
							</div>
							<div class="icon">
								<i class="ion ion-stats-bars"></i>
							</div>
							<a href="${ctx}/mng/member/stupwdlist" class="small-box-footer"> More info <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-xs-6"
						style="margin-top: 30px; margin-left: 80px">
						<!-- small box -->
						<div class="small-box bg-green">
							<div class="inner">
								<h3>查询登录记录</h3>

								<p>School Manager</p>
							</div>
							<div class="icon">
								<i class="ion ion-person-add"></i>
							</div>
							<a href="${ctx}/mng/member/loginrecoder" class="small-box-footer"> More info <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<!-- ./col -->

					<!-- /.row -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<!-- Main Footer -->
		<footer class="main-footer">
			<!-- To the right -->
			<div class="pull-right hidden-xs">天津卓讯科技有限公司</div>
			<!-- Default to the left -->
			<strong>Copyright &copy; 2018 <a href="#">ITVK.CN</a>.
			</strong> All rights reserved.
		</footer>
	</div>
	<!-- ./wrapper -->
	<!--删除模态框开始--->
	<div class="modal modal-danger fade" id="deletemodal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">删除对话框</h4>
				</div>
				<div class="modal-body">
					<p>是否确认删除&hellip;</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-outline pull-left"
						data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-outline" id="btn_delete">确认</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!--删除模态框结束--->

	<jsp:include page="../../icd_js.jsp"></jsp:include>

	<script type="text/javascript">
		//删除按钮
		$(".a-delete").click(function() {
			//超连接href属性，href传给后台代码
			var url = $(this).attr("href"); //后台方法 delete?id=123;
			$("#deletemodal").modal('show');
			//点击确认删除按钮
			$("#btn_delete").one('click', function() {
				window.location.href = url; //跳转至后台（删除数据库。。。。）
				$("#deletemodal").modal("hide");
				return false; //阻止原有动作
			});
			return false; //阻止原有动作
		});
	</script>
</body>

</html>