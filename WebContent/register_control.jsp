<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" import="javabean.BusinessBean"%>
<jsp:useBean id="registerControl" class="javabean.BusinessBean" scope="session">
<jsp:setProperty name="registerControl" property="*" />
</jsp:useBean>

<html>
<head>
<title>注册控制</title>
</head>
<body>
<%
	//获取参数
	String username = request.getParameter("username");
	String password1 = request.getParameter("password1");
	String password2 = request.getParameter("password2");
	String email = request.getParameter("email");
	
	//检查输入是否为空
	if(username==null||password1==null||password2==null||email==null||!password1.equals(password2)){
		response.sendRedirect("register.jsp");
	}else{	
	//验证新用户的注册信息是否已存在
		boolean isExist = registerControl.isExist(username);
		
		//BusinessBean businessBean = new BusinessBean();
		//boolean isExist = businessBean.isExist(username);
		if(!isExist){
			registerControl.add(username, password1, email);
		//	businessBean.add(username,password1,email);//如果不存在，加入数据库
			response.sendRedirect("login.jsp");	//返回登录界面	
		}else response.sendRedirect("register.jsp");//存在同样用户名，重新注册
	}

%>
</body>
</html>