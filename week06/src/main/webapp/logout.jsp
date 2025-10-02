<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script type ="text/javascript">
		if(confirm("정말 로그아웃 하시겠습니까?"))
			location.herf = "logoutConfirm.jsp";
		else
			history.back(); //history.go(-1); 과 동일
	</script>
</body>
</html>