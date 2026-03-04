<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 시간</title>
</head>
<body>
<%
	Date now = new Date(); //자바 클래스의 객체 선언
%>
현재 시각: <%= now %> <br>
지금은 웹플시간입니다. <%-- 이것은 실행과 관련없습니다. --%>
</body>
</html>