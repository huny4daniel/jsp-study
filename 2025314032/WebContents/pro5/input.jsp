<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제 화면</title>
</head>
<body>
영화정보 삭제: <br><hr><br>
<form action="process.jsp" method="post">
아이디: <input type="text" name="movieId" size="10">
<input type="submit" value="삭제">
</form>
</body>
</html>