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
		<jsp:include page="../icd_title.jsp"></jsp:include>

		<!-- 左侧菜单栏 -->
		<jsp:include page="../icd_stumenu.jsp"></jsp:include>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					学生信息 <small>2017-07-07</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="./main.html"><i class="fa fa-home"></i> 首页</a></li>
					<li><a href="#">系统设置</a></li>
					<li class="active"><a href="javascript:;">学生信息</a></li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<!---组合查询-->
				<!-- Small boxes (Stat box) -->
				<div class="row">
					<div class="col-lg-3 col-xs-6">
						<!-- small box -->
						<div class="small-box bg-aqua">
							<div class="inner">
								<h3>150</h3>

								<p>成交客户</p>
							</div>
							<div class="icon">
								<i class="fa fa-shopping-cart"></i>
							</div>
							<a href="#" class="small-box-footer"> 客户信息 <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-xs-6">
						<!-- small box -->
						<div class="small-box bg-green">
							<div class="inner">
								<h3>
									53<sup style="font-size: 20px">%</sup>
								</h3>

								<p>Bounce Rate</p>
							</div>
							<div class="icon">
								<i class="ion ion-stats-bars"></i>
							</div>
							<a href="#" class="small-box-footer"> More info <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-xs-6">
						<!-- small box -->
						<div class="small-box bg-yellow">
							<div class="inner">
								<h3>44</h3>

								<p>User Registrations</p>
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
					<div class="col-lg-3 col-xs-6">
						<!-- small box -->
						<div class="small-box bg-red">
							<div class="inner">
								<h3>65</h3>

								<p>Unique Visitors</p>
							</div>
							<div class="icon">
								<i class="ion ion-pie-graph"></i>
							</div>
							<a href="#" class="small-box-footer"> More info <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<!-- ./col -->
				</div>
				<!-- /.row -->

				<!-- /组合查询 -->
				<!-- Your Page Content Here -->
				<div class="row">
					<div class="col-md-12">
						<div class="box box-success">
							<div class="box-header with-border"
								style="height: 54px; line-height: 34px">
								<h3 class="box-title">数据表格</h3>
								<div class="box-tools"
									style="position: absolute; top: 10px; right: 10px">
									<a type="button" href="form.html"
										class="btn btn-flat btn-success pull-left"><i
										class="fa fa-plus"></i> 添加产品</a>
								</div>
								<!-- /.box-tools -->
							</div>
							<!-- /.box-header -->
							<div class="box-body table-responsive">
								<table id="example"
									class="table table-hover table-striped table-bordered">
									<thead>
										<tr>
											<th>编号</th>
											<th>名称</th>
											<th>发布时间</th>
											<th>备注</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>编号</th>
											<th>名称</th>
											<th>发布时间</th>
											<th>备注</th>
											<th>操作</th>
										</tr>
									</tfoot>
									<tbody>
										<tr>
											<td>1</td>
											<td><a href="detail?id=321">张三</a></td>
											<td>2017-08-08 09:30</td>
											<td>天津理工大学</td>
											<td><a class="a-edit" href="detail?id=321"><i
													class="fa fa-edit"></i></a>&nbsp;&nbsp; <a class="a-delete"
												href="delete?id=321" data-toggle="modal"
												data-target="#deletemodal"> <i class="fa fa-trash-o"></i>
											</a></td>
										</tr>
										<tr>
											<td>2</td>
											<td><a href="detail?id=321">李四</a></td>
											<td>2017-08-08 09:30</td>
											<td>备注信息</td>
											<td><a class="a-edit" href="detail?id=21"><i
													class="fa fa-edit"></i></a>&nbsp;&nbsp; <a class="a-delete"
												href="delete?id=321" data-toggle="modal"
												data-target="#deletemodal"> <i class="fa fa-trash-o"></i>
											</a></td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- /.box-body -->
							<div class="box-footer">
								<div class="pull-right">
									<div class="pagination-info"
										style="display: -moz-inline-stack; display: inline-block; padding: 7px 16px; color: #888;">共有58条，每页显示20条</div>
									<ul class="pagination pagination-flat no-margin pull-right">
										<li><a href="#">«</a></li>
										<li><a href="#">‹</a></li>
										<li><a href="#">1</a></li>
										<li class="active"><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#">›</a></li>
										<li><a href="#">»</a></li>
									</ul>
								</div>
							</div>
							<!-- /.box-footer -->
						</div>
						<!-- /.box -->
					</div>
				</div>

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