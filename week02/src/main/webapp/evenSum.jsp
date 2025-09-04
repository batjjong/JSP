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
		//스크립틀릿 영억 : 지비 소스코드 입력(알고리즘 구현)
		int total1 = 0;
		int total2 = 0;
		for(int i = 0; i<=100; i++){
			if(i%2==0){
				total1 += i;
			}
			if(i%2==1){
				total2 += i;
			}
		}
	%>
	
	<!-- 자바변수의 값을 출력할 떄 : 표현식 사용 -->
	<h3>1부터 100까지 숫자 중 모든 짝수의 합 = <%= total1 %></h3>
	<h3>1부터 100까지 숫자 중 모든 홀수의 합 = <%= total2 %></h3>
</body>
</html>