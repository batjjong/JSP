<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fieldset>
		<legend>회원가입 결과</legend>
		<ul>
			<li>아이디 : ${member.id }</li>
			<li>비밀번호 : ${member.password }</li>
			<li>이름 : ${member.name }</li>
			<li>나이 : ${member.age }</li>
			<li><i class="fa-solid fa-phone"></i>${member.phone }</li>				
			<li><i class="fa-solid fa-envelope">${member.email }</i></li>
		</ul>
	</fieldset>
</body>
</html>