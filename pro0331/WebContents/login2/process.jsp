<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="my.util.User" %>
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
	String password = request.getParameter("password");
	String address = request.getParameter("address");
	
	User user = new User(userId, password, userName, address);
	
	if (userId.equals(password)) {
		session.setAttribute("LOGIN", user);
		
		session.setMaxInactiveInterval(10);
		
		response.sendRedirect("home.jsp");
	}
	else {
%>
		<script type="text/javascript">
			alert("아이디 패스워드가 일치하지 않습니다.");
			history.go(-1);
		</script>
<%
	}
%>
</body>
</html>