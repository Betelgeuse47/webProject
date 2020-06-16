<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>购物页面</title>
</head>
<body>
<%
	String username1 = (String)session.getAttribute("username");
	if(username1 == null){
		request.setCharacterEncoding("UTF-8");
		String username = request.getParameter("username");
		if(username==null){
			response.sendRedirect("login.jsp");
		}else{
			session.setAttribute("username",username);
			out.println(username+"! 欢迎来到主界面，选择你要的商品:");
		}
	}else{
		out.println(username1+"! 欢迎来到主界面，选择你要的商品:");
	}
%>
	<form action="shoppingCart.jsp" method="post">
		<p>商品信息</p>
		<table border="1">
			<tr>
			<td><input type="checkbox" name= "choice" value= "U盘"></td>
			<td>U盘</td>
			</tr>
			<tr>
			<td><input type="checkbox" name= "choice" value= "鼠标"></td>
			<td>鼠标</td>
			</tr>
			<tr>
			<td><input type="checkbox" name= "choice" value= "键盘"></td>
			<td>键盘</td>
			</tr>
		</table>
		<input type="submit" value= "添加购物车">
	</form>
	<form  name="form1" method="post" action="logout.jsp">
		<input type="submit" name="submit" value="退出">
	</form>
</body>
</html>