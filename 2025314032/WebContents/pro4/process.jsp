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
	request.setCharacterEncoding("UTF-8");

	String target = request.getParameter("target");
	String keyword = request.getParameter("keyword");
	Connection conn = ConnectionProvider.getConnection();
	List<Movie> list = null;
	
	try {
		MovieDao dao = new MovieDao();
		if (target != null && keyword != null) {
			list = dao.selectLike(conn, target, keyword);
		}
		
	}
	catch(SQLException e){	
	}
	if (list != null) {
%>
<table border="1">
<tr>
<th>아이디</th><th>타이틀</th><th>제작사</th><th>개봉일</th><th>포스터</th>
</tr>
<%
	for(Movie movie:list) {
%>
<tr>
<td><%= movie.getMovieId() %></td><td><%= movie.getTitle() %></td>
<td><%= movie.getMaker() %></td><td><%= movie.getOpenDate() %></td>
<td><img src="/2025314032/Images/<%= movie.getPoster() %>" width="70" height="100">
</td>
</tr>
<%	} %>
</table>
<%	} 
	else {
		out.print("검색 결과가 없습니다.");	
	}
%>
</body>
</html>