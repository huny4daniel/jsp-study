<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.sql.*,my.dao.*,my.util.*,my.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 삭제 결과</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");

    String movieId = request.getParameter("movieId");
    int movieIdInt = Integer.parseInt(movieId);

    Connection conn = ConnectionProvider.getConnection();
    Movie movie = null;
    try {
        MovieDao dao = new MovieDao();

        dao.deleteById(conn, movieIdInt);
        
    } catch(SQLException e) {}    
%>
<%= movieId %>번 영화가 삭제되었습니다.
</body>
</html>