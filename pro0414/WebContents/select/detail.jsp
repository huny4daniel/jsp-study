<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,my.dao.*,my.util.*,my.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int bookId = Integer.parseInt(request.getParameter("bookId"));
	Connection conn = ConnectionProvider.getConnection();
	Book book = null;
	
	try {
		BookDao dao = new BookDao();
		book = dao.selectById(conn, bookId);
	}
	catch(SQLException e){
		
	}
%>
도서명: <%= book.getBookName() %> <br><br>
저자:	 <%= book.getAuthor() %> <br><br>
가격: <%= book.getPrice() %> <br><br>
도서 이미지: <br>
<img src= "/pro0414/images/<%= book.getBookImage() %>" width="400" height="500">
</body>
</html>