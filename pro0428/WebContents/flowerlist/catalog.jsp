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
	List<Flower> list = null;
	request.setCharacterEncoding("utf-8");
	String target = request.getParameter("target");
	String keyword = request.getParameter("keyword");
	String favTarget = request.getParameter("favTarget");
	String direct = request.getParameter("direct");
	Connection conn = ConnectionProvider.getConnection();
	try {
		FlowerDao dao = new FlowerDao();
		if (target != null && keyword != null) {
			list = dao.selectLike(conn, target, keyword);	
		}
		else if (favTarget != null && direct != null){
			list = dao.selectFav(conn, favTarget, direct);
		}
		else {
			list = dao.selectList(conn);
		}
	}
	catch(SQLException e) {
	}
%>
사용자 아이디: ${LOGIN} <br><hr><br>
<c:set var="list" value="<%=list %>"/>
<c:if test="${list != null}">
<table border="1">
<tr>
<th>아이디</th><th>꽃이름</th><th>원산지</th><th>가격</th><th>등록일</th><th>이미지</th><th>상세보기</th><th>구매하기</th>
</tr>
<c:forEach var="flower" items="${list}">
<tr>
<td>${flower.flowerId}</td><td>${flower.name}</td><td>${flower.origin}</td><td>${flower.price}</td>
<td><fmt:formatDate value="${flower.registerDate}" pattern="yyyy년 MM월 dd일"/></td>
<td>
<a href="detail.jsp?flowerId=${flower.flowerId}"><img src="/pro0428/images/${flower.image}" width="70" height="100"></a></td>
<td>
	<button type="button" onclick="location.href='detail.jsp?flowerId=${flower.flowerId}'" value="수정">상세보기</button>
</td>
<td>
	<button type="button" onclick="location.href='purchaseForm.jsp?flowerId=${flower.flowerId}'" value="삭제">구매하기</button>
</td>
</tr>
</c:forEach>
<tr>
<td colspan="8">
<form action="" method="post">
타겟: <select name="target">
	<option value="name">꽃이름</option>
	<option value="origin">원산지</option>
</select>
검색어: <input type="text" name="keyword">
<input type="submit" value="검색">
</form>
</td>
</tr>
<tr>
<td colspan="8">
<form action="" method="post">
선호도: <select name="favTarget">
	<option value="fav">선호도</option>
	<option value="registerDate">출시일</option>
	<option value="price">가격</option>
	<option value="name">이름</option>
</select>
방향: <select name="direct">
	<option value="desc">내림차순</option>
	<option value="asc">오름차순</option>
</select>
<input type="submit" value="보기">
</form>
</td>
</tr>
</table>
</c:if>
</body>
</html>






