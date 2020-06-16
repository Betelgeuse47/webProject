<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册新用户</title>
</head>
<body>

<h2>注册页面</h2>
<form name="form1" method="post" action="register_control.jsp">
	<table width="200" border="1" >
		<tr><td colspan="2">注册窗口</td>
		<tr><td>用户名:</td><td><input type="text" name="username" size="10"></td>
		</tr>
		<tr><td>密码:</td><td><input type="password" name="password1" size="10"></td>
		</tr>
		<tr><td>确认密码:</td><td><input type="password" name="password2" size="10"></td>
		</tr>
		<tr><td>邮箱:</td><td><input type="text" name="email" size="10"></td>
		</tr>
		<tr><td colspan="2">
		<input type="submit" name="submit" value="提交">
		<a href="login.jsp">返回登录界面</a></td>
		</tr>	
	</table>
</form>
</body>
</html>