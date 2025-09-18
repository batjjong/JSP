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
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
	
		//전달할 데이터 변수 선언
		String msg;
		
		if(id.equals("admin")){
			if(pw.equals("1234")){
				msg = id+"님, 안녕하세요";
			}
			else {
				msg = "비밀번호가 틀립니다";
			}
		}
		else {
			msg = "아이디가 없습니다";
		}
		//화면 입력없이 데이터를 넘기는 방법
		request.setAttribute("msg", msg);
	%>
	
	<jsp:forward page="loginResult.jsp"></jsp:forward>
</body>
</html>