<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h2>데이터 입력 결과</h2>
    <p>
        이름 : ${empty param.name ? '손님' : param.name}
    </p>
    <p>
        나이 : ${empty param.age ? 0 : param.age}
        (${empty param.age ? '미성년자' : (param.age >= 20 ? '성인' : '미성년자')})
    </p>
    <p>
        이메일 : ${empty param.email ? 'unknown' : param.email}
    </p>
    <hr>
    <p>
        요청방식 : ${pageContext.request.method}
    </p>
</body>
</html>