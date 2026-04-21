<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
사용자 등록: <br><hr><br>
<form action="process.jsp" method="post">
아이디: <input type="text" name="memberId" size="10">
패스워드: <input type="text" name="password" size="10">
이름: <input type="text" name="name" size="10">
성적: <input type="text" name="grade" size="10">
<input type="submit" value="등록">
</form>
</body>
</html>