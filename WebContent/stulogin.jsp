<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="icd_meta.jsp"></jsp:include>
<title>中环考试系统登录页面</title>

<jsp:include page="icd_css.jsp"></jsp:include>
</head>
<body class="hold-transition login-page">
	<div class="login-box">
		<div class="login-logo">
			<a href="stulogin.jsp">中环<b>招生考试</b>系统
			</a>
		</div>
		<div class="login-box-body"
			style="border-top: 6px solid #00A65A; border-radius: 6px;">
			<p class="login-box-msg">
				学生管理入口/<a href="sturegist.jsp">注册</a>
			</p>

			<form action="stulogin" method="post">

				<div class="form-group has-feedback"
					style="color: red; text-align: center;">${msg}</div>
				<div class="form-group has-feedback">
					<input type="text" class="form-control" placeholder="用户名"
						name="loginname"> <span
						class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" class="form-control" placeholder="密码"
						name="password"> <span
						class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>

				<div class="row">
					<div class="col-xs-8">
						<input type="text" class="form-control" id="vc" name="vc"
							placeholder="验证码">
					</div>
					<div class="col-xs-4">
						<img src="vcServlet" id="img_cc" />
					</div>
				</div>

				<div class="row">
					<div class="col-xs-8 checkbox">
						<input type="checkbox" id="remeber" name="remeber"
							checked="checked"> &nbsp;记住登录状态
					</div>
					<div class="col-xs-4">
						<input type="submit" class="btn btn-success btn-block btn-flat"
							value="登录" />
					</div>
				</div>
			</form>
		</div>
	</div>
	<jsp:include page="icd_js.jsp"></jsp:include>
	<script src="plugins/jQuery/jquery-1.11.1.min.js"></script>
	<script>
		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' // optional
			});
		});

		$("#img_cc").click(function() {
			var src = $(this).attr("src");
			if (src.indexOf("?") != -1) {
				src = src.substring(0, src.indexOf("?"));
			}
			$(this).attr("src", src + "?d=" + new Date().getTime());
		});
	</script>
</body>

</html>