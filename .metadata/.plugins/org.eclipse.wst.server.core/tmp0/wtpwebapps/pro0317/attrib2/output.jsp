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
	String pageAtt = (String)pageContext.getAttribute("pageAtt");
	String requestAtt = (String)request.getAttribute("requestAtt");
	String sessionAtt = (String)session.getAttribute("sessionAtt");
	String applAtt = (String)application.getAttribute("applicationAtt");
%>
page 학생 이름: <%= (String) pageContext.getAttribute("studName") %> <br>
page 성적: <%= (Integer) pageContext.getAttribute("score") %> <br>
page 학과: <%= (String) pageContext.getAttribute("department") %> <br>
<hr>
request 학생 이름: <%= (String) request.getAttribute("studName") %> <br>
request 성적: <%= (Integer) request.getAttribute("score") %> <br>
request 학과: <%= (String) request.getAttribute("department") %> <br>
<hr>
session 학생 이름: <%= (String) session.getAttribute("studName") %> <br>
session 성적: <%= (Integer) session.getAttribute("score") %> <br>
session 학과: <%= (String) session.getAttribute("department") %> <br>
<hr>
appl 학생 이름: <%= (String) application.getAttribute("studName") %> <br>
appl 성적: <%= (Integer) application.getAttribute("score") %> <br>
appl 학과: <%= (String) application.getAttribute("department") %> <br>
</body>
</html>