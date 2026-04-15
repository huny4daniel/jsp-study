<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,my.dao.*,my.util.*,my.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 정보 수정</title>
</head>
<body>
<%
	int bookId = Integer.parseInt(request.getParameter("bookId"));
	Book book = null;
	Connection conn = ConnectionProvider.getConnection();
	try {
		BookDao dao = new BookDao();
		book = dao.selectById(conn, bookId);
	}
	catch (SQLException e) {
	}
%>
도서 정보 수정: <br><hr><br>
<form action="update.jsp" method="post">
도서아이디: <input type="text" name="bookId" value="<%= book.getBookId() %>">
도서명: <input type="text" name="bookName" value="<%= book.getBookName() %>">
저자: <input type="text" name="author" value="<%= book.getAuthor() %>">
가격: <input type="text" name="price" value="<%= book.getPrice() %>">
책이미지: <input type="text" name="bookImage" value="<%= book.getBookImage() %>">
<input type="submit" value="수정">
</form>
</body>
</html>