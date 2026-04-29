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
	List<Book> list = null;
	Connection conn = ConnectionProvider.getConnection();
	try {
		BookDao dao = new BookDao();
		list = dao.selectList(conn);
	}
	catch(SQLException e) {
	}
%>
<c:set var="list" value="<%=list %>"/>
<c:if test="${list != null}">
<table border="1">
<tr>
<th>아이디</th><th>도서명</th><th>저자</th><th>가격</th><th>출판일</th><th>이미지</th><th>수정</th><th>삭제</th>
</tr>
<c:forEach var="book" items="${list}">
<tr>
<td>${book.bookId}</td><td>${book.bookName}</td><td>${book.author}</td><td>${book.price}</td>
<td><fmt:formatDate value="${book.publishDate}" pattern="yyyy년 MM월 dd일"/></td>
<td>
<a href="detail.jsp?bookId=${book.bookId}"><img src="/pro0428/images/${book.bookImage}" width="70" height="100"></a></td>
<td>
	<button type="button" onclick="location.href='/pro0428/update/updateForm.jsp?bookId=${book.bookId}'" value="수정">수정</button>
</td>
<td>
	<button type="button" onclick="location.href='/pro0428/delete/delete.jsp?bookId=${book.bookId}'" value="삭제">삭제</button>
</td>
</tr>
</c:forEach>
</table>
</c:if>
</body>
</html>






