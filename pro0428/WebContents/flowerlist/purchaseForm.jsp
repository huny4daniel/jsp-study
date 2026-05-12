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
	Flower flower = null;
	Connection conn = ConnectionProvider.getConnection();
	try {
		FlowerDao dao = new FlowerDao();
		flower = dao.selectById(conn, flowerId);
	}
	catch(SQLException e) {
	}
%>
<c:set var="flower" value="<%=flower %>"/>
<c:if test="${flower != null}">
<form action="purchase.jsp" method="post">
꽃아이디: <input type="text" name="flowerId" value="${flower.flowerId}">
가격: <input type="text" name="price" value="${flower.price}">
수량: <select name="amount">
	<option value="1">1개</option>
	<option value="2">2개</option>
	<option value="3">3개</option>
	<option value="4">4개</option>
</select>
<input type="submit" value="구매하기">
</form> <br><hr><br>
<img src="/pro0428/images/${flower.image}" width="100" height="130"><br>
</c:if>

<a href="catalog.jsp">카탈로그 보기</a>
</body>
</html>






