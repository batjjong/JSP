<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>request 기본객체의 속성 값을 이용해서 데이터 전달하기</h3>
	<%
		request.setAttribute("id","admin");
		request.setAttribute("password","1234");
		request.setAttribute("name","홍길동");
		request.setAttribute("addr","서울");
		request.setAttribute("email","hgd@naver.com");
	%>
	
	<jsp:forward page="getAttribute.jsp" />
</body>
</html>