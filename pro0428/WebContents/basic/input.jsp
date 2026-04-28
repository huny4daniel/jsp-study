<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

정보 입력: <br><hr><br>
<form action="process.jsp" method="post">
사용자이름: <input type="text" name="userName" value="손흥민">
주소: <input type="text" name="address" value="시흥"><br>
취미:
<input type="checkbox" name="hobby" value="독서">독서
<input type="checkbox" name="hobby" value="등산">등산
<input type="checkbox" name="hobby" value="낚시">낚시
<input type="checkbox" name="hobby" value="운동">운동 <br>
부전공:
<input type="checkbox" name="sub" value="스마트팩토리">스마트팩토리
<input type="checkbox" name="sub" value="이커머스">이커머스
<input type="checkbox" name="sub" value="창업">창업
<input type="checkbox" name="sub" value="클라우드">클라우드
<input type="submit" value="입력">
</form>
</body>
</html>