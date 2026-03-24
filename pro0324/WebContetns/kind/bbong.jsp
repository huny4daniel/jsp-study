<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= request.getParameter("customer") %>님,
짬뽕을 <%= request.getParameter("amount") %>그릇 주문하셨군요. <br>
품질은 <%= request.getAttribute("QUAL") %>으로 신청하셨습니다. <br>
맛은 <%= request.getAttribute("GRADE") %>으로 신청하셨습니다. <br>
맛있게 드세요. <br><hr><br>
<img alt="짬뽕" src="/pro0324/images/bbong.jpg" width="300" height="300">
</body>
</html>