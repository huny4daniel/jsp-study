<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
클라이언트 IP 주소: <%= request.getRemoteAddr() %> <br>
정보전송 방식: <%= request.getMethod() %> <br>
URL 경로: <%= request.getRequestURL() %> <br>
컨택스트 경로: <%= request.getContextPath() %> <br>
서버 이름: <%= request.getServerName() %> <br>
서버 포트번호: <%= request.getServerPort() %> <br>
</body>
</html>