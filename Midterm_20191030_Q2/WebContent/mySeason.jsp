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
		season = "��"; 
	}else if(month>=6&&month<=8){
		season = "����";
	}else if (month>=9&&month<=11){
		season = "����";
	}else if (month==12||month==1||month==2){
		season = "�ܿ�";
	}
%>
<b><%=name%></b>���� �����ϴ� ������ <b><%=myseason%></b>�Դϴ�. <br>
<%if (season.equals(myseason)){%>
	<b>�̹����� �����ϴ� �����Դϴ�.</b> <br>
<%}else{ %>
	<b>�̹����� �����ϴ� ������ �ƴմϴ�.</b> <br>
<%} %>
	
</body>
</html>