<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.sql.*,my.dao.*,my.util.*,my.model.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="movie" class="my.model.Movie"/>
<jsp:setProperty property="*" name="movie"/>
<%
	Connection conn= ConnectionProvider.getConnection();

	try {
		MovieDao dao = new MovieDao();
		dao.update(conn, movie);
	} catch(SQLException e){}
%>
영화 정보 수정이 완료되었습니다. 
</body>
</html>