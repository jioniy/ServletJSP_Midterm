<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
</head>
<body>
<%
request.setCharacterEncoding("EUC-KR");
int korean = Integer.parseInt(request.getParameter("Korean"));
int english = Integer.parseInt(request.getParameter("English"));
int math = Integer.parseInt(request.getParameter("Math"));
int sum = korean+english+math;
double average = sum/3.0;
%>
���� ����: <%=korean%> <br>
���� ����: <%=english %> <br>
���� ����: <%=math %><br>
���� : <%=sum %><br>
��� : <%=String.format("%.2f",average)%>
</body>
</html>