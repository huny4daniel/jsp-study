<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="my.dao.*,my.model.*,my.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fmt:requestEncoding value="utf-8"/>
<jsp:useBean id="user" class="my.model.User"/>
<jsp:setProperty property="*" name="user"/>
<% 
	user.setLoginTime(new java.util.Date()); 
	Connection conn = ConnectionProvider.getConnection();
	try {
		UserDao dao = new UserDao();
		dao.insert(conn, user);
	}
	catch (SQLException e){
	}
%>
사용자 등록이 완료되었습니다.

</body>
</html>