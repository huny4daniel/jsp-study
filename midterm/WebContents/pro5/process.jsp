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

    String memberId = request.getParameter("memberId");

    Connection conn = ConnectionProvider.getConnection();
    Member member = null;
    try {
        MemberDao dao = new MemberDao();
        
        dao.deleteById(conn, memberId);
        
    } catch(SQLException e) {}
    request.setAttribute("MEMBERID", memberId);
    
%>
   <jsp:forward page="output.jsp"/>
</body>
</html>