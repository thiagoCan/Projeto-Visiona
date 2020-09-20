<%@ page language="java" contentType="text/html; utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="">
<title>Outra Página</title>
</head>
<body>

	 	<%
		String use = (String) session.getAttribute("user");
		if (use == null) {response.sendRedirect("index.jsp");}
		else{out.print("Logado como: "+use);}
		%>
	<h1>Essa é uma outra página</h1>
	<input type="file" id="myfile" name="myfile">
	<br><a href="out.jsp">Sair</a>
	

</body>
</html>