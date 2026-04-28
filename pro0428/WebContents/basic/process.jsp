<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fmt:requestEncoding value="utf-8"/>
사용자명: ${param.userName} <br>
<%
	String userName = request.getParameter("userName");
	String address = request.getParameter("address");
	request.setAttribute("UN", userName);
	request.setAttribute("AD", address);
%>
<jsp:forward page="output.jsp"/>
주소: ${param.address} <br>
취미:
<c:forEach var="hobby" items="${paramValues.hobby}">
	${hobby} :
</c:forEach><br>
부전공:
<c:forEach var="sub" items="${paramValues.sub}">
	${sub} :
</c:forEach>
</body>
</html>