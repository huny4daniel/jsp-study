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
<%
	int flowerId = Integer.parseInt(request.getParameter("flowerId"));
	Connection conn = ConnectionProvider.getConnection();
	int count = 0;
	try {
		FlowerDao dao = new FlowerDao();
		count = dao.deleteById(conn, flowerId);
	}
	catch(SQLException e) {
	}
%>
<c:set var="count" value="<%=count %>"/>
<c:if test="${count == 1}">
	<jsp:forward page="../flowerlist/list.jsp"/>
</c:if>
</body>
</html>






