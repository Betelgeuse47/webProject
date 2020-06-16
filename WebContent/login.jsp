<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录界面</title>
</head>
<body style="background-image:url(image/wallhaven-nz2lxy.jpg)">

<h2>欢迎来到商店</h2>
<form name="form1"  method="post" action="login_control.jsp">
	<table width="200" border="1" >
		<tr><td colspan="2">登录窗口</td>
		<tr><td>用户名:</td><td><input type="text" name="username" size="10"></td>
		</tr>
		<tr><td>密码:</td><td><input type="password" name="password1" size="10"></td>
		</tr>
		<tr><td colspan="2">
		<input type="submit" name="submit" value="登录">
		<a href="register.jsp">注册新用户</a></td>
		</tr>	
	</table>
</form>

</body>
</html>