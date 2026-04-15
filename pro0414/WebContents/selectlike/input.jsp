<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
도서 검색: <br>
<form action="search.jsp" method="post">
검색 대상: <select name="target">
	<option value="bookName">도서명</option>
	<option value="author">저자</option>	
</select>
검색어: <input type="text" name="keyword" size="10">
<input type="submit" value="검색">
</form>
</body>
</html>