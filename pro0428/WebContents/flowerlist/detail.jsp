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
아이디: ${book.bookId}<br>
도서명: ${book.bookName}<br>
저자: ${book.author}<br>
가격: ${book.price}<br>
출판일: <fmt:formatDate value="${book.publishDate}" pattern="yyyy년 MM월 dd일"/><br><hr><br>
<img src="/pro0428/images/${book.bookImage}" width="350" height="500"><br>
</c:if>
</body>
</html>






