<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,my.dao.*,my.util.*,my.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int movieId = Integer.parseInt(request.getParameter("movieId"));
	Connection conn = ConnectionProvider.getConnection();
	MovieDao dao = new MovieDao();
	Movie movie = dao.selectById(conn, movieId);
%>
영화정보 수정: <br><hr><br>
<form action="update.jsp" method="post">
아이디: <input type="text" name="movieId" size="10" value="<%= movieId %>" readonly> 
타이틀: <input type="text" name="title" size="10" value="<%= movie.getTitle() %>">
메이커: <input type="text" name="maker" size="10" value="<%= movie.getMaker() %>"> <br><br>
영화종류:
<input type="radio" name="kind" value="코미디" <%= "코미디".equals(movie.getKind()) ? "checked" : "" %>>코미디
<input type="radio" name="kind" value="멜로" <%= "멜로".equals(movie.getKind()) ? "checked" : "" %>>멜로
<input type="radio" name="kind" value="SF" <%= "SF".equals(movie.getKind()) ? "checked" : "" %>>SF
<input type="radio" name="kind" value="액션" <%= "액션".equals(movie.getKind()) ? "checked" : "" %>>액션 <br><br>
가격: <input type="text" name="price" size="10" value="<%= movie.getPrice() %>">
포스터: <input type="text" name="poster" size="10" value="<%= movie.getPoster() %>">
<input type="submit" value="수정">
</form>
</body>
</html>
