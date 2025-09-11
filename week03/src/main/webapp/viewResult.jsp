<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	name 파라미터 = <%=request.getParameter("name")%><br>
	addr 파라미터 = <%=request.getParameter("addr")%><br>
	<%
		String[] values = request.getParameterValues("pet");
		
		if(values != null){
			for(String s : values){
				out.println(s);
			}
		} 
	%>
	<h3 style = "color:red">request.getParameter()메서드 사용</h3>
	<%
		Enumeration pNames = request.getParameterNames();
		
		while(pNames.hasMoreElements()){
			//읽을 요소가 있음
			String pName = (String)pNames.nextElement();
			out.println(pName);
		}
	%>
	<p>
	<%
		Map pMap = request.getParameterMap();
		String[] value = (String[])pMap.get("name");
		out.println("Map 형실 : (name, "+ value[0] +")");
	%>
</body>
</html>