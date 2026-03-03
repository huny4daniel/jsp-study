<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
| 파일 | 편집 | 사용자 | 편의 기능 | 도움말 | 
아이디: <%= request.getParameter("userId") %>
사용자 이름: <%= request.getParameter("userName") %>
<hr><br>
</body>
</html>