<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- total.jsp -->
	<!-- 1부터 100까지의 합을 구하여 출력 -->
	<%
		//스크립틀릿 영억 : 지비 소스코드 입력(알고리즘 구현)
		int total = 0;
		for(int i = 0; i<=100; i++){
			total += i;
		}
	%>
	
	<%!
		//선언부 : 자바 메소드나 전역 변수 선언
		public int sum(int x,int y){
			return(x+y);
		}
	%>
	
	<!-- 자바변수의 값을 출력할 떄 : 표현식 사용 -->
	<h3>1부터 100까지의 합 <%= total %></h3>
	<h2>두 수의 합구하기</h2>
	<h3>10 + 15 = <%=sum(10,15) %></h3>
</body>
</html>