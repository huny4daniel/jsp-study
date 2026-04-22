<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
영화정보 등록: <br><hr><br>
<form action="process.jsp" method="post">
타이틀: <input type="text" name="title" size="10">
메이커: <input type="text" name="maker" size="10"> <br><br>
영화종류: 
<input type="radio" name="kind" value="코미디">코미디
<input type="radio" name="kind" value="멜로">멜로
<input type="radio" name="kind" value="SF">SF
<input type="radio" name="kind" value="액션">액션 <br><br>
가격: <input type="text" name="price" size="10">
포스터: <input type="text" name="poster" size="10">
<input type="submit" value="등록">
</form>
</body>
</html>