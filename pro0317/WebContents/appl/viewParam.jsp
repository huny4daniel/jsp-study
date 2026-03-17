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
	String manager = application.getInitParameter ("managerName");
	int user = Integer.parseInt(application.getInitParameter ("numUser"));
	String path = application.getRealPath("appl");
%>
매니저 이름: <%= manager %> <br>
사용자 수: <%= user %> <br>
appl 실제경로: <%= path %> <br>

</body>
</html>