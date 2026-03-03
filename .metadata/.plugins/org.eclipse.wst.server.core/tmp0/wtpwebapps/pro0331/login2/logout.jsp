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
	session.removeAttribute("LOGIN");
	// session.invalidate(); // 가급적 사용을 지양 (너무 강력함)
%>
로그아웃하셨습니다. <br><br>
<a href="login.jsp">로그인하기</a>
</body>
</html>