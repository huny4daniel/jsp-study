<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
영화정보 검색: <br><hr><br>
<form action="process.jsp" method="post">
검색대상: <select name="target">
	<option value="title">타이틀</option>
	<option value="maker">제작사</option>
	<option value="kind">영화종류</option>	
</select>
검색어: <input type="text" name="keyword" size="10">
<input type="submit" value="검색">
</form>
</body>
</html>