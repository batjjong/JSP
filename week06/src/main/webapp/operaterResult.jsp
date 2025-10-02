<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>EL 연산자 결과</h2>
	x = ${param.num1 }, y = ${param.num2 }<br>
	
	x + y = ${param.num1 + param.num2 }<br>
	x - y = ${param.num1 - param.num2 }<br>
	x * y = ${param.num1 * param.num2 }<br>
	x / y = ${param.num1 / param.num2 }<br>
	x % y = ${param.num1 % param.num2 }<br>
	
	<hr>
	
	x와 y가 모두 양수 입니까? ${param.num1>0 && param.num2>0 }<br>
	x와 y가 같습니까? {param.num1 ==param.num2}
	<hr>
	${var = "admin" }<br>
	${strArr = ['가','나','다']; '' }<br>
	<hr>
	${var == "admin" }<br>
	${strArr[0] += strArr[1] += strArr[2]}<br>
	
</body>
</html>