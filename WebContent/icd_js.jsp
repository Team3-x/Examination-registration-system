<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- jQuery 3 -->
	<script
		src="<%=request.getContextPath()%>/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script
		src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.min.js"></script>
	<!-- iCheck -->
	<script
		src="<%=request.getContextPath()%>/plugins/iCheck/icheck.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminlte/js/app.js"></script>
	<script src="<%=request.getContextPath()%>/adminlte/js/my.js"></script>
	<!--时间日期控件开始  -->
	<script
		src="<%=request.getContextPath()%>/plugins/My97DatePicker/WdatePicker.js"></script>
	<!--时间日期控件结束   -->
	<!--富文本编辑器开始 -->
	<script
		src="<%=request.getContextPath()%>/plugins/kindeditor/kindeditor-all.js"></script>
	<script
		src="<%=request.getContextPath()%>/plugins/kindeditor/lang/zh-CN.js"></script>
	<!--富文本编辑器结束 -->
	<script type="text/javascript">
		//学生端退出事件
		$("#btn_logout").click(function() {
			//取消
			$("#exitModal").modal("hide");
			//登录页面
			window.location.href = "${ctx}/mng/stu/stuexit";
		});
		
		//管理员退出事件
		$("#btn_logout_member").click(function() {
			//取消
			$("#exitModal").modal("hide");
			//登录页面
			window.location.href = "${ctx}/mng/member/memberexit";
		});
	</script>

</body>
</html>