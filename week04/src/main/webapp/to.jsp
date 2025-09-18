<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>이 페이지는 to.jsp에서 생성한 내용입니다</h3>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		String email = request.getParameter("email");
	%>
	
	<h3>jsp:param 액션 태그 결과</h3>
	
	<ul>
		<li>아이디 - <%=id %></li>
		<li>비밀번호 - <%=pw %></li>
		<li>이름 - <%=name %></li>
		<li>주소 - <%=addr %></li>
		<li>이메일 - <%=email %></li>
	</ul>
</body>
</html>