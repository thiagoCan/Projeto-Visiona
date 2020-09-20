<%@page import="org.projeto.Controle" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css\sty.css">
<meta charset="utf-8">
<title>Login</title>
</head>
<body>
	
    <div class="login-screen">
    <form action="index.jsp" method="post">
        <h1 class="app-title">Login</h1>
        <br><input class="login-field" type="text" name="user" placeholder="Usuário"/><br>
        <br><input class="login-field" type="password" name="pass" placeholder="Senha"/>
        <br><br><input class="btn" type="submit" value="Login"/>
       </form>
    </div>
	
	<%
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		if (user != null && pass != null && !user.isEmpty() && !pass.isEmpty()) {
			session.setAttribute("user", user);
			response.sendRedirect("outrapag.jsp");
		}
	%>
	
</body>
</html>