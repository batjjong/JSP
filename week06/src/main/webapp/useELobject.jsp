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
		pageContext.setAttribute("page", "#1");
		request.setAttribute("name", "홍길동");
		request.setAttribute("id", "admin");
		request.setAttribute("msg", "application 기본객체 이용");
	%>
	
	<h4>
		pageContext 객체의 page 속성 값 = ${pageScope.page }<br>
		request 객체의 name 속성 값 = ${requestScope.name }<br>
		session객페의 id 속성 값 =  = ${sessionScope.id }<br>
		application 객체의 msg 속성 값 = ${applicationScope.msg }<br>
		요청 파라미터 읽기 : code = ${param.code }
	</h4>
	
	<h4>
		pageContext 객체의 page 속성 값 = ${page }<br>
		request 객체의 name 속성 값 = ${name }<br>
		session객페의 id 속성 값 = ${id }<br>
		application 객체의 msg 속성 값 = ${msg }<br>
	</h4>
</body>
</html>