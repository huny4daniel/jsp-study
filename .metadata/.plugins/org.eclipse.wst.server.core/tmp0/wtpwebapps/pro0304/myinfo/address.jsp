<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 주소</title>
</head>
<body>
<%
	String address = "시흥";
	String name = "허영훈"; //이름 입력
	int age = 23; //나이 입력
%>
나의 주소는 <%= address %> 입니다. <br> 
나의 나이: <%= age %> <br> 
나의 이름: <%= name %> <br> 
</body>
</html>