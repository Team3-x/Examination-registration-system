<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<jsp:include page="../../icd_meta.jsp"></jsp:include>
<title>中环考试系统-后台管理</title>
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
					管理员添加信息 <small><jsp:include page="../icd_time.jsp"></jsp:include></small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="./main.html"><i class="fa fa-home"></i> 首页</a></li>
					<li><a href="#">基础信息管理</a></li>
					<li class="active"><a href="javascript:;">管理员添加</a></li>
				</ol>
			</section>

			<!--主内容 -->
			<section class="content">
				<!-- right column -->
				<div class="col-md-12">
					<!-- Horizontal Form -->
					<div class="box box-info" style="border-radius: 12px;">
						<div class="box-header with-border">
							<h3 class="box-title">添加管理员</h3>
						</div>
						<!-- /.box-header -->
						<!-- form start -->
						<form class="form-horizontal" action="${ctx}/mng/member/addmember"
							method="post">
							<div class="box-body">
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">登录名</label>

									<div class="col-sm-10">
										<input type="text" class="form-control" id="loginname"
											placeholder="请输入登录名" name="loginname">
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">密码</label>

									<div class="col-sm-10">
										<input type="text" class="form-control" id="pwd" name="pwd"
											placeholder="请输入密码">
									</div>
								</div>


								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">用户名</label>

									<div class="col-sm-10">
										<input type="text" class="form-control" id="username"
											name="username" placeholder="请输入用户名">
									</div>
								</div>

								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">真实姓名
									</label>

									<div class="col-sm-10">
										<input type="text" class="form-control" id="real_name"
											name="real_name" placeholder="请输入真实姓名 ">
									</div>
								</div>


								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">邮箱
									</label>

									<div class="col-sm-10">
										<input type="text" class="form-control" id="email"
											name="email" placeholder="请输入邮箱 ">
									</div>
								</div>

								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">联系方式
									</label>

									<div class="col-sm-10">
										<input type="text" class="form-control" id="mobile"
											name="mobile" placeholder="请输入联系方式 ">
									</div>
								</div>

								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">性别
									</label>

									<div class="col-sm-10">
										<input type="radio" id="inputEmail3" name="gender" value="1"
											checked="checked">男 <input type="radio"
											id="inputEmail3" name="gender" value="0">女
									</div>
								</div>

								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">是否有效
									</label>

									<div class="col-sm-10">
										<input type="radio" id="inputEmail3" name="isenable" value="1"
											checked="checked"> 有效<input type="radio"
											id="inputEmail3" name="isenable" value="0">无效
									</div>
								</div>


								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">上传头像:</label>
									<div class="col-sm-10">
										<div class="input-group">
											<input type="text" name="title" class="form-control"
												readonly="readonly" id="btn_upload" placeholder="请选择要上传图片"
												style="height: 43px;"></input> <span
												class="input-group-addon"><i class="fa  fa-calendar"></i>
										</div>
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
		//富文本编辑器创建---显示哪个控件中
		var editor = KindEditor.create('textarea[name="description"]', {
			width : '100%',
			urlType : "", //设置站内本地URL：默认是""，可选值有"relative"、"absolute"、"domain"
			uploadJson : 'ke_upload', //指定上传文件的服务器端程序请求路径
			fileManagerJson : 'ke_manager', //指定浏览远程图片的服务器端程序请求路径
			allowFileManager : true
		//是否允许浏览远程服务器上的文件。
		});

		//上传主图  调用富文本编辑中文件上传功能
		var editor2 = KindEditor.editor({
			allowFileManager : true
		//是否允许浏览远程服务器上的文件。
		});
		//单独富文本编辑器上传功能
		$("#btn_upload").click(
				function() {
					editor2.loadPlugin('image', function() {
						//富文本编辑图片上传对话框
						editor2.plugin.imageDialog({
							imageUrl : $("#url1").val(), //文件上传网址
							clickFn : function(url, title, width, height,
									border, align) {
								$('#url1').val(url);
								editor2.hideDialog();
							}
						});
					});
				});
	</script>
</body>

</html>