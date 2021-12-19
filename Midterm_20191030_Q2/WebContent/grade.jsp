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
국어 점수: <%=korean%> <br>
영어 점수: <%=english %> <br>
수학 점수: <%=math %><br>
총점 : <%=sum %><br>
평균 : <%=String.format("%.2f",average)%>
</body>
</html>