<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String bookName = request.getParameter("bookName");
	String author = request.getParameter("author");
	int price = Integer.parseInt (request.getParameter("price"));
%>
도서 입력 <br>
<hr>
<form action="output.jsp" method="post">
도서명: <input type="text" name="book" value="<%= bookName %>">
저자: <input type="text" name="author" value="<%= author %>">
가격: <input type="text" name="price" value="<%= price %>">
<input type="submit" value="입력">
</form>
</body>
</html>