<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("name", "조우진");
	pageContext.setAttribute("age", "29");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 실습</title>
</head>
<body>
	<h2>디렉티브를 이용한 include</h2>
	<%@ include file="inFile.jsp" %>
	<hr>
	<h2>액션태그를 이용한 include</h2>
	<jsp:include page="inFile.jsp"></jsp:include>
	<hr> 
</body>
</html>