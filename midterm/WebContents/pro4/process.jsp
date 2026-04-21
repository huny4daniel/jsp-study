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

<%	
	String memberId = request.getParameter("memberId");
	Connection conn= ConnectionProvider.getConnection();
	Member member = null;
	try {
		MemberDao dao = new MemberDao();
		member = dao.selectById(conn, memberId);
	} catch(SQLException e){}
	request.setAttribute("MEMBER", member);
%>
<jsp:forward page="output.jsp"/>
</body>
</html>