<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="my.model.Member" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fmt:requestEncoding value="utf-8"/>
<jsp:useBean id="member" class="my.model.Member"/>
<jsp:setProperty property="*" name="member"/>
<% member.setRegisterDate(new java.util.Date()); %>
<c:set var="m" value="<%=member%>"/>
아이디: ${m.memberId} <br>
패스워드: ${m.password} <br>
이름: ${m.name} <br>
나이: ${m.age} <br>
등록일: ${m.registerDate} <br>
<c:if test="${m.hobby!=null}">
	취미:
	<c:forEach var="hobby" items="${m.hobby}">
		${hobby}:
	</c:forEach><br>
</c:if>
<c:if test="${m.sub!=null}">
	부전공:
	<c:forEach var="sub" items="${m.sub}">
		${sub}:
	</c:forEach><br>
</c:if>
</body>
</html>