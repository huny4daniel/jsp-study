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
<jsp:useBean id="member" class="my.model.Member"/>
<jsp:setProperty property="*" name="member"/>
<%
	Connection conn= ConnectionProvider.getConnection();
	member.setRegisterDate(new java.util.Date());
	try {
		MemberDao dao = new MemberDao();
		dao.update(conn, member);
	} catch(SQLException e){}
%>
회원 정보 수정이 완료되었습니다. 
</body>
</html>