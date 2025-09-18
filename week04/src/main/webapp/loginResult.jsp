<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>*로그인 결과*</h2>
	<!-- <%
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		
		if(id.equals("admin")){
			if(pw.equals("1234")){
				out.println(id+"님 , 안녕하세요");
			}
			else{
				out.println("비밀번호가 잘못되었습니다");
			}
		}
		else{
			out.println("아이디가 없습니다");
		}
	%> 
	-->
	<h3><% request.getAttribute("msg"); %></h3>
	
	<form action="loginForm.jsp">
		<input type = "submit" value = "초기화면">
	</form>
	
	
</body>
</html>