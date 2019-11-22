<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="icd_meta.jsp"></jsp:include>
<title>中环考试系学生端注册页面</title>

<jsp:include page="icd_css.jsp"></jsp:include>
</head>

<body class="hold-transition login-page">
	<div class="login-box">
		<div class="login-logo">
			<a href="../../index2.html">中环<b>招生考试</b>系统
			</a>
		</div>
		<div class="login-box-body"
			style="border-top: 6px solid #00A65A; border-radius: 6px;">
			<p class="login-box-msg">
				学生管理入口/<a href="${ctx}/stulogin.jsp">登录</a>
			</p>

			<form action="${ctx}/sturegist" method="post">
				<div class="form-group has-feedback">
					<input type="text" class="form-control" placeholder="用户名"
						name="loginname"> <span
						class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" class="form-control" placeholder="密码"
						name="pwd"> <span
						class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="row" align="center" style="margin-left: 100px">
					<div class="col-xs-6">
						<input type="submit" class="btn btn-success btn-block btn-flat"
							value="注册" />
					</div>
				</div>
			</form>
		</div>
	</div>
	<jsp:include page="icd_js.jsp"></jsp:include>

</body>

</html>