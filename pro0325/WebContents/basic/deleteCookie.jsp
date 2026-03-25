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
	String cookieName = request.getParameter("cookieName");
	Cookie[] cookies = request.getCookies();
	
	if (cookies != null && cookies.length > 0) {
		for (Cookie cookie: cookies) {
			if (cookie.getName().equals(cookieName)) {
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
		}
	}
%>
<%= cookieName %> 쿠키를 삭제하였습니다. <br>
</body>
</html>