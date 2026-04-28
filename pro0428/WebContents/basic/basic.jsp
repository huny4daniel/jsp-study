<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String address = "안산";
%>
주소: <%= address %> <br>
<c:set var="add" value="<%= address %>"/>
주소: ${add} <br>
</body>
</html>