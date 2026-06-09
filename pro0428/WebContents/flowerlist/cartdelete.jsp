<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int flowerCount = (int)session.getAttribute("flowerCount");
	for (int i = 1; i <= flowerCount; i++) {
		session.removeAttribute("flower" + i);
	}
%>
카트에 있는 내용이 삭제되었습니다. <br><hr><br>
<a href="catalog.jsp">카탈로그 돌아가기</a>
</body>
</html>