<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소입력</title>
</head>
<body>
주소 입력: <br><hr><br>
<form action="makeCookieBox.jsp" method="post">
쿠키명: <input type="text" name="cookieName" size="10">
쿠키값: <input type="text" name="cookieValue" size="10">
쿠키경로: <input type="text" name="path" size="10">
<input type="submit" value="쿠키생성">
</form>
</body>
</html>