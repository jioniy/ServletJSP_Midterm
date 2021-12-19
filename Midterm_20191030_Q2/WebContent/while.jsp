<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Show your pattern</title>
</head>
<h1>Show your pattern</h1>
<%
	request.setCharacterEncoding("EUC-KR");
	String pattern = request.getParameter("pattern");
	int number = Integer.parseInt(request.getParameter("number"));
	int count = 0;
	
%>
<body>
<%for (int i=0;i<number;i++){
	for(int j = 0;j<=i;j++){ %>
		<b><%=pattern%></b>
<%
	}
	%>
	<br/>
	<% 
	}
%>
</body>
</html>