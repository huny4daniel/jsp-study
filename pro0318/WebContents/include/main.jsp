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
	request.setCharacterEncoding("utf-8");
	String userId = request.getParameter("userId");
	String userName = request.getParameter("userName");
%>
<jsp:include page="/module/menu.jsp">
	<jsp:param value="<%= userId %>" name="userId"/>
	<jsp:param value="<%= userName %>" name="userName"/>
</jsp:include>
여기는 main.jsp 에서 출력한 부분입니다. <br><br><br>
<%@ include file="/module/var.jspf" %>
전공: <%= depart %> <br>

<jsp:include page="/module/footer.jsp">
	<jsp:param value="<%= userName %>" name="userName"/>
</jsp:include>
</body>
</html>