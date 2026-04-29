<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.sql.*,java.util.*,my.model.*,my.dao.*,my.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	catch(SQLException e) {
	}
%>
<c:set var="book" value="<%=book %>"/>
<c:if test="${book != null}">
<form action="update.jsp" method="post">
아이디: <input type="text" name="bookId" value="${book.bookId}">
도서명: <input type="text" name="bookName" value="${book.bookName}">
저자: <input type="text" name="author" value="${book.author}">
가격: <input type="text" name="price" value="${book.price}">
이미지: <input type="text" name="bookImage" value="${book.bookImage}">
<input type="submit" value="수정">
</form>
</c:if>
</body>
</html>






