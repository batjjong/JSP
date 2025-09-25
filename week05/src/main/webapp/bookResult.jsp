<%@page import="week05.bookInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		bookInfo book = (bookInfo)request.getAttribute("book");
	%>
	<h2>*회원가입 결과</h2>
	<table border ="1">
		<tr>
			<td>코드</td>
			<td>제목</td>
			<td>저자</td>
			<td>등록 일자</td>
		</tr>
		<tr>
			<td><%=book.getCode() %></td>
			<td><%=book.getTitle() %></td>
			<td><%=book.getWriter() %></td>
			<td><%=book.getPubDate() %></td>
		</tr>
	</table>
	<br>
	<button onclick="location.href='bookForm.jsp'">초기화면</button>
	
</body>
</html>