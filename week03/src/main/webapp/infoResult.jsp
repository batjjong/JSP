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
		String num =request.getParameter("number");
		int age =Integer.parseInt(request.getParameter("age"));
		String[] sub = request.getParameterValues("lang");
	%>
	
	<h2>학번 : <%=num %></h2>
	<h2>나이 : <%=age %>
		<% 
			if(age>=20){
				out.println(" (성인)");
			}
			else{
				out.println(" (미성년자)");
			}
		%>
	</h2>
	
	<%	
		if(sub != null){
			for(String s : sub){
				out.println("<li>" + s + "</li>");
			}
		} 
	
		else{
			out.println("<li>선택한 과목이 없습니다</li>");
		}
	%>
	
	
</body>
</html>