<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생정보</title>
</head>
<body>
학생 정보 입력: <br><hr><br>
<form action="process2.jsp" method="post">
학생이름: <input type="text" name="studName" size="10">
아이디: <input type="text" name="studId" size="10">
주소: <input type="text" name="address" size="10">
나이: <input type="text" name="age" size="10"> <br>
<input type="radio" name="depart" value="경영">경영
<input type="radio" name="depart" value="기계">기계
<input type="radio" name="depart" value="컴공">컴공
<input type="radio" name="depart" value="게임">게임 <br>
<input type="checkbox" name="hobby" value="독서">독서
<input type="checkbox" name="hobby" value="축구">축구
<input type="checkbox" name="hobby" value="영화">영화
<input type="checkbox" name="hobby" value="게임">게임 <br>
<input type="submit" value="입력">
</form>
</body>
</html>