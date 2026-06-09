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
	Cart cart = null;
	int flowerCount = (int)session.getAttribute("flowerCount");
	int flowerId = 0;
	int amount = 0;
    String userId = (String)session.getAttribute("LOGIN");
    Purchase purchase = null;
	Connection conn = ConnectionProvider.getConnection();
	PurchaseDao dao = new PurchaseDao();
	FlowerDao fdao = new FlowerDao();
	Flower flower = null;
	try {
		for (int i = 1; i <= flowerCount; i++) {
			cart = (Cart)session.getAttribute("flower" + i);
			flowerId = cart.getFlowerId();
			amount = cart.getAmount();
			flower = fdao.selectById(conn, flowerId);
		    purchase = new Purchase(userId, flowerId, amount, flower.getPrice(), amount * flower.getPrice(), new java.util.Date());
		    
		    dao.insert(conn, purchase);
		}
	}
	catch(SQLException e) {
	}
	finally {
		JdbcUtil.close(conn);
	}
	for (int i = 1; i <= flowerCount; i++) {
		session.removeAttribute("flower" + i);
	}
%>
<%= flowerId %>의 구매가 완료되었습니다.

<a href="catalog.jsp">카탈로그 보기</a>
</body>
</html>






