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
	String department = request.getParameter("department");
	
	pageContext.setAttribute("studName", name);
	pageContext.setAttribute("score", score);
	pageContext.setAttribute("department", department);
	
	request.setAttribute("studName", name);
	request.setAttribute("score", score);
	request.setAttribute("department", department);
	
	session.setAttribute("studName", name);
	session.setAttribute("score", score);
	session.setAttribute("department", department);
	
	application.setAttribute("studName", name);
	application.setAttribute("score", score);
	application.setAttribute("department", department);
	
	// response.sendRedirect("output.jsp");
	
%>

<jsp:forward page="output.jsp"></jsp:forward>
</body>
</html>