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
	String userName = request.getParameter("userName");
	String address = request.getParameter("address");
	String major = request.getParameter("major");
%>
사용자 이름: <%= userName %> <br>
사용자 주소: <%= address %> <br>
사용자 전공: <%= major %> <br>
</body>
</html>