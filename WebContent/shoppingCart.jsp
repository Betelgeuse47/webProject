<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String username1= (String)session.getAttribute("userName1");
	Vector goods=(Vector)session.getAttribute("shoppingCart");
	if(goods==null){
	goods = new Vector();}
	String [] g= request.getParameterValues("choice");
	if(g!=null){
		for(int i=0;i<g.length;i++)
			goods.add(g[i]);
	}
	session.setAttribute("shoppingCart",goods);
	out.println("<br>您的姓名:"+username1);
	out.println("<br>购物车中的商品:<br>");
	for(int j=0;j<goods.size();j++){
		out.print(goods.get(j)+"<br>");
	}
%>
<p><a href="main.jsp">返回主页面继续购物 </a></p>
</body>
</html>