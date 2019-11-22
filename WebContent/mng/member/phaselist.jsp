<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.zhonghuan.sx.entity.Member"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- core标签库：核心标签库：包含Web应用的常用功能，比如：逻辑判断、循环、表达式赋值、基本输入输出等。 -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- fmt标签库，国际化格式化 -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
		<jsp:include page="../icd_member_title.jsp"></jsp:include>

		<!-- 左侧菜单栏 -->
		<jsp:include page="../icd_membermenu.jsp"></jsp:include>

		<!-- 主体内容开始 -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					阶段定义信息<small> <jsp:include page="../icd_time.jsp"></jsp:include>
					</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="./main.html"><i class="fa fa-home"></i> 首页</a></li>
					<li><a href="#">报考信息管理 </a></li>
					<li class="active"><a href="javascript:;">阶段定义信息</a></li>
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

							<form id="searchForm" action="${ctx}/mng/member/phase/serachname"
								class="form-horizontal" method="post">
								<div class="box-body">
									<div class="form-group">
										<label for="search_user_name" class="col-sm-2 control-label">阶段定义名称</label>
										<div class="col-sm-4">
											<input type="text" class="form-control"
												id="search_phase_name" name="search_phase_name"
												placeholder="按阶段定义名称进行模糊查询">
										</div>
									</div>
								</div>

								<div class="box-footer">
									<div class="col-sm-offset-1">
										<button type="reset" class="btn btn-default btn-flat">重置</button>
										&nbsp;&nbsp;&nbsp;
										<button type="submit" class="btn btn-primary btn-flat">查询</button>
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
								<h3 class="box-title">阶段定义列表</h3>
								<div class="box-tools"
									style="position: absolute; top: 10px; right: 10px">
									<a type="button" href="${ctx}/mng/member/addphase.jsp"
										class="btn btn-flat btn-success pull-left"><i
										class="fa fa-plus"></i> 添加阶段定义信息</a>
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
											<th>阶段定义名称</th>
											<th>开始时间</th>
											<th>结束时间</th>
											<th>备注</th>
											<th>操作</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>编号</th>
											<th>阶段定义名称</th>
											<th>开始时间</th>
											<th>结束时间</th>
											<th>备注</th>
											<th>操作</th>
										</tr>
									</tfoot>

									<tbody>
										<!-- c:foreach介绍 :循环开始-->
										<c:forEach items="${list}" var="phase">
											<tr>
												<td>${phase.id}</td>
												<td>${phase.stagename}</td>
												<td><fmt:formatDate value="${phase.starttime}"
														pattern="yyy年MM月dd日   HH时mm分ss秒" /></td>
												<td><fmt:formatDate value="${phase.endtime}"
														pattern="yyy年MM月dd日   HH时mm分ss秒" /></td>
												<td>${phase.note}</td>
												<td><a class="a-edit"
													href="${ctx}/mng/member/phasedit?id=${phase.id}"><input
														type="button" class="btn btn-success" value="编辑" /></a>&nbsp;&nbsp;
													<a class="a-delete"
													href="${ctx}/mng/member/phasedelete?id=${phase.id}"
													data-toggle="modal" data-target="#deletemodal"> <input
														type="button" class="btn btn-danger" value="删除" />
												</a>
											</tr>
										</c:forEach>
										<!-- c:foreach介绍 :循环结束-->
									</tbody>
								</table>
							</div>
							<!-- /.box-body -->
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