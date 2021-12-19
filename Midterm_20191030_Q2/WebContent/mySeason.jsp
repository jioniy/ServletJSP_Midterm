<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>My favorite Weather</title>
</head>
<body>
<h3><b>My favorite Weather</b></h3>
<%
	request.setCharacterEncoding("EUC-KR");
	String name = request.getParameter("name");
	String myseason = request.getParameter("season");
	String season = "";
	Date date= new Date();
	Calendar cal = Calendar.getInstance();
	cal.setTime(date);
	int month = cal.get(Calendar.MONTH)+1;
	%>
	<%
	if (month>=3&&month<=5){ 
		season = "봄"; 
	}else if(month>=6&&month<=8){
		season = "여름";
	}else if (month>=9&&month<=11){
		season = "가을";
	}else if (month==12||month==1||month==2){
		season = "겨울";
	}
%>
<b><%=name%></b>님이 좋아하는 계절은 <b><%=myseason%></b>입니다. <br>
<%if (season.equals(myseason)){%>
	<b>이번달이 좋아하는 계절입니다.</b> <br>
<%}else{ %>
	<b>이번달은 좋아하는 계절이 아닙니다.</b> <br>
<%} %>
	
</body>
</html>