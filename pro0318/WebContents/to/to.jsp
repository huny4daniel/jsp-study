<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
to.jsp에서 출력된 부분입니다. <br>
userName = <%= request.getAttribute("userName") %> <br>
userId = <%= request.getAttribute("userId") %> <br>
</body>
</html>