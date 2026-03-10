<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이름을 입력하세요. <br>
<hr>
<form action="process.jsp" method="post">
이름: <input type="text" name="userName" size="10"> <br>
주소: <input type="text" name="address" size="10"> <br>
나이: <input type="text" name="userAge" size="10"> <br>
<hr>
취미: <input type="checkbox" name="hobby" value="등산"> 등산
<input type="checkbox" name="hobby" value="수영"> 수영
<input type="checkbox" name="hobby" value="독서"> 독서
<input type="checkbox" name="hobby" value="영화감상"> 영화감상 <br>
<hr>
전공: <input type="radio" name="major" value="경영"> 경영
<input type="radio" name="major" value="컴공"> 컴공
<input type="radio" name="major" value="메가"> 메카
<input type="radio" name="major" value="기계"> 기계
<hr>
<input type="submit" value="입력">
</form>
</body>
</html>