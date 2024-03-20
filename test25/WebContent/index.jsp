<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<%
	String title = "Main";
%>
<title><%=title %></title>
</head>
<body>
	<h2>메인 페이지</h2>
	<hr>
	<nav>
		<ul>
		<li><a href="test01.jsp">JSP 페이지 기본 구성 요소</a></li>
		<li><a href="test02.jsp?name='조우진'&age=29&point=100">GET 데이터 전송</a></li>
		<li><a href="test03.jsp">POST 데이터 전송</a></li>
		</ul>	
	</nav>
</body>
</html>