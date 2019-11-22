<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../../icd_meta.jsp"></jsp:include>
<title>中环招生考试——后台管理</title>
<jsp:include page="../../icd_css.jsp"></jsp:include>
</head>
<!-- 页面主体内容  -->
<body class="hold-transition skin-green sidebar-mini fixed">
	<div class="wrapper">

		<!-- 标题栏 -->
		<jsp:include page="../icd_title.jsp"></jsp:include>

		<!-- 左侧菜单栏 -->
		<jsp:include page="../icd_stumenu.jsp"></jsp:include>

		<!-- 主体内容开始 -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					学生信息 <small>2018-03-20</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="./main.html"><i class="fa fa-home"></i> 首页</a></li>
					<li><a href="#">系统设置</a></li>
					<li class="active"><a href="javascript:;">学生信息</a></li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<!-- 组合查询 -->
				<div class="row">
					<div class="col-md-12">
						<div class="box box-primary">
							<div class="box-header with-border">
								<h3 class="box-title">组合查询</h3>
							</div>

							<form id="searchForm" action="./list.html"
								th:action="@{/mgmt/managers}" class="form-horizontal"
								method="post">
								<div class="box-body">
									<div class="form-group">
										<label for="search_user_name" class="col-sm-1 control-label">姓名</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="search_user_name"
												placeholder="发布人">
										</div>
										<label for="search_user_name" class="col-sm-2 control-label">标题关键字</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="search_user_name"
												placeholder="标题关键字">
										</div>
									</div>
									<div class="form-group">
										<label for="search_user_name" class="col-sm-1 control-label">状态</label>
										<div class="col-sm-4">
											<label class="radio-inline"> <input name="status"
												type="radio" value="0" checked="checked" />已发布
											</label> <label class="radio-inline"> <input name="status"
												type="radio" value="1" />草稿
											</label>
										</div>
										<label for="search_user_name" class="col-sm-2 control-label">发布时间</label>
										<div class="col-sm-4">
											<div class="input-group" id="datepicker">
												<input type="text" class="input-sm form-control"
													name="start" /> <span class="input-group-addon">到</span> <input
													type="text" class="input-sm form-control" name="end" />
											</div>
										</div>
									</div>
								</div>

								<div class="box-footer">
									<div class="col-sm-offset-1">
										<button type="reset" class="btn btn-default btn-flat">重置</button>
										&nbsp;&nbsp;&nbsp;
										<button type="button" class="btn btn-primary btn-flat"
											onclick="doSearch()">查询</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
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
										class="fa fa-plus"></i> 添加学生</a>
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
											<th>学生姓名</th>
											<th>发布时间</th>
											<th>备注</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>编号</th>
											<th>学生姓名</th>
											<th>发布时间</th>
											<th>备注</th>
											<th>操作</th>
										</tr>
									</tfoot>
									<tbody>
										<tr>
											<td>1</td>
											<td><a href="detail?id=321">张三</a></td>
											<td>2018-08-08 09:30</td>
											<td>天津理工大学中环信息学院</td>
											<td><a class="a-edit" href="detail?id=321"><i
													class="fa fa-edit"></i></a>&nbsp;&nbsp; <a class="a-delete"
												href="delete?id=321" data-toggle="modal"
												data-target="#deletemodal"> <i class="fa fa-trash-o"></i>
											</a></td>
										</tr>
										<tr>
											<td>2</td>
											<td><a href="detail?id=321">李四</a></td>
											<td>2018-08-08 09:30</td>
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
			<!-- 主体内容开始 -->
		</div>
		<!-- /.content-wrapper -->

		<!-- 底部页面 -->
		<jsp:include page="../icd_buttom.jsp"></jsp:include>
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