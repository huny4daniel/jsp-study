<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="my.model.Member" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Member member = (Member)request.getAttribute("MEMBER");
%>
아이디: <%= member.getMemberId() %> <br>
패스워드: <%= member.getPassword() %> <br>
이름: <%= member.getName() %> <br>
성적: <%= member.getGrade() %> <br>
등록일: <%= member.getRegisterDate() %> <br>
</body>
</html>