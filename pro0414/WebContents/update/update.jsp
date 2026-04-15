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
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="book" class="my.model.Book"/>
<jsp:setProperty property="*" name="book"/>

<%
	Connection conn = ConnectionProvider.getConnection();
	book.setPublishDate(new java.util.Date());
	int result = 0;
	try {
		BookDao dao = new BookDao();
		result = dao.update(conn, book);
	}
	catch(SQLException e){
	}
	
	if (result == 1) {
		out.print(book.getBookId() + " 정보 수정이 끝났습니다. ");
	}
%>
<jsp:forward page="../select/list.jsp"/>
</body>
</html>