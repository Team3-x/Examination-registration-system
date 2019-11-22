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
		<jsp:include page="../icd_member_title.jsp"></jsp:include>
		<!-- 左侧菜单栏 -->
		<jsp:include page="../icd_membermenu.jsp"></jsp:include>
		<!-- 主体内容开始-->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					阶段定义添加信息 <small><jsp:include page="../icd_time.jsp"></jsp:include></small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="./main.html"><i class="fa fa-home"></i> 首页</a></li>
					<li><a href="#">报考信息管理</a></li>
					<li class="active"><a href="javascript:;">阶段定义添加</a></li>
				</ol>
			</section>

			<!--主内容 -->
			<section class="content">
				<!-- right column -->
				<div class="col-md-12">
					<!-- Horizontal Form -->
					<div class="box box-info" style="border-radius: 12px;">
						<div class="box-header with-border">
							<h3 class="box-title">添加阶段定义</h3>
						</div>
						<!-- /.box-header -->
						<!-- form start -->
						<form class="form-horizontal" action="${ctx}/mng/member/addphase"
							method="post">
							<div class="box-body">
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">阶段名称</label>

									<div class="col-sm-10">
										<input type="text" class="form-control" id="stagename"
											name="stagename" placeholder="请输入阶段名称">
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">开始时间:</label>
									<div class="col-sm-10">
										<!--时间图标-->
										<div class="input-group">
											<span class="input-group-addon"><i
												class="fa  fa-calendar"></i></span> <input type="text"
												name="starttime" class="form-control" id="timktask" />
										</div>
									</div>
								</div>

								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">结束时间:</label>
									<div class="col-sm-10">
										<!--时间图标-->
										<div class="input-group">
											<span class="input-group-addon"><i
												class="fa  fa-calendar"></i></span> <input type="text"
												name="endtime" class="form-control" id="endtimktask" />
										</div>
									</div>
								</div>

								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">阶段名称</label>

									<div class="col-sm-10">
										<input type="text" class="form-control" id="stagename"
											name="note" placeholder="请输入备注">
									</div>
								</div>

							</div>
							<!-- /.box-body -->
							<div class="box-footer">
								<button type="submit" class="btn btn-default">重置</button>
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

	<!--富文本编辑器结束 -->
	<script type="text/javascript">
		//点击时间日期控件
		$("#timktask").click(function() {
			WdatePicker(); //调用my97datepicker封装JS
		});
		$("#endtimktask").click(function() {
			WdatePicker(); //调用my97datepicker封装JS
		});
	</script>
</body>

</html>