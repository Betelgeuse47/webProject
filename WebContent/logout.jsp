<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" import="javabean.BusinessBean"%>
<html>
<head>
<title>登出</title>
</head>
<body>
<%
	session.removeAttribute("username");
	response.sendRedirect("login.jsp");
%>
</body>
</html>