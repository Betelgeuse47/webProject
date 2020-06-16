<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" import="javabean.BusinessBean"%>
<jsp:useBean id="loginControl" class="javabean.BusinessBean" scope="session">
<jsp:setProperty name="loginControl" property="*" />
</jsp:useBean>
<html>
<head>
<title>登录控制</title>
</head>
<body>
<%
	//获取参数
	String username = request.getParameter("username");
	String password = request.getParameter("password1");
	
	//检查输入是否为空
	if(username == null||password== null){
		response.sendRedirect("login.jsp");
		}else{
		//BusinessBean businessBean = new BusinessBean();
		//boolean isValid = businessBean.valid(username,password);
		boolean isValid = loginControl.valid(username, password);
		//out.print(isValid);
		if(isValid){
			session.setAttribute("username", username);
			response.sendRedirect("main.jsp");
		}else response.sendRedirect("login.jsp");
	}	
%>
</body>
</html>