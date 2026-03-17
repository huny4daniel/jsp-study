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
	String name = request.getParameter("studName");
	
	int score = Integer.parseInt(request.getParameter("score"));
	
	if (score >= 90) {
		out.println(name + "의 성적은 A입니다.");
	}
	else if (score < 90 && score >= 80) {
		out.println(name + "의 성적은 B입니다.");
	}
	else if (score < 80 && score >= 70) {
		out.println(name + "의 성적은 C입니다.");
	}
	else {
		out.println(name + "의 성적은 D입니다.");
	}
%>
</body>
</html>