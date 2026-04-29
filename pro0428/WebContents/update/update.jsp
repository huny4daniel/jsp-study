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
<fmt:requestEncoding value="utf-8"/>
<jsp:useBean id="book" class="my.model.Book"/>
<jsp:setProperty property="*" name="book"/>
<%
	Connection conn = ConnectionProvider.getConnection();
	book.setPublishDate(new java.util.Date());
	try {
		BookDao dao = new BookDao();
		dao.update(conn, book);
	}
	catch(SQLException e) {
	}
%>
도서정보 수정이 완료되었습니다.
<jsp:forward page="/list/list.jsp"></jsp:forward>
</body>
</html>






