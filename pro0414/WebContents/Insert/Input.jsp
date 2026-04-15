<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 정보 입력</title>
</head>
<body>
도서 정보 입력: <br><hr><br>
<form action="process.jsp" method="post">
도서명: <input type="text" name="bookName" size="10">
저자: <input type="text" name="author" size="10">
가격: <input type="text" name="price" size="10">
책이미지: <input type="text" name="bookImage" size="10">
<input type="submit" value="입력">
</form>
</body>
</html>