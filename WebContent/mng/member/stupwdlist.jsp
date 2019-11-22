<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.zhonghuan.entity.Member"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
					学生密码清零 <small> <jsp:include page="../icd_time.jsp"></jsp:include>
					</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="./main.html"><i class="fa fa-home"></i> 首页</a></li>
					<li><a href="#">学生信息 </a></li>
					<li class="active"><a href="javascript:;">学生密码清零</a></li>
				</ol>
			</section>
			<!-- Your Page Content Here -->
			<div class="row">
				<div class="col-md-12" style="margin-top: 30px">
					<div class="box box-success">
						<div class="box-header with-border"
							style="height: 54px; line-height: 34px">
							<h3 class="box-title">学生列表</h3>
							<!-- /.box-tools -->
						</div>
						<!-- /.box-header -->
						<div class="box-body table-responsive">
							<table id="example"
								class="table table-hover table-striped table-bordered">
								<thead>
									<tr>
										<th>编号</th>
										<th>登录名</th>
										<th>注册时间</th>
										<th>操作</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>编号</th>
										<th>登录名</th>
										<th>注册时间</th>
										<th>操作</th>
									</tr>
								</tfoot>
								<tbody>
									<c:forEach items="${stulist}" var="regist">
										<tr>
											<td>${regist.id}</td>
											<td>${regist.loginname}</td>
											<td><fmt:formatDate value="${regist.register_time}"
													pattern="yyyy-MM-dd HH:mm:ss" /></td>
											<td><c:if test="${regist.pwd=='000000'}" var="flag">已清零(6个0)</c:if>


												<c:if test="${!flag}">
													<a class="a-edit"
														href="${ctx}/mng/member/updatestupwd?id=${regist.id}"><input
														type="button" class="btn btn-success" value="清零" /></a>

												</c:if></td>
										</tr>
									</c:forEach>
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