<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>includeMain.jsp 페이지</h2>
	<%
		int number = 10;
	%>
	<%@ include file="includeSub.jsp" %>
	<h3>공통 변수 dataFolder = "<%=dataFolder %>"</h3>
</body>
</html>