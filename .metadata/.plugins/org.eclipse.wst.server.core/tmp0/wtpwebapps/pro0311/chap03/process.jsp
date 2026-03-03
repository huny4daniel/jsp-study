<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   request.setCharacterEncoding("utf-8");

   String bookName = request.getParameter("bookName");
   String author = request.getParameter("author");
   
   String urlBookName = URLEncoder.encode(bookName, "utf-8");
   String urlAuthor = URLEncoder.encode(author, "utf-8");
   
   response.sendRedirect("output.jsp?bookName=" + urlBookName + "&author=" + urlAuthor); // 리다이렉트
%>
리다이렉트 오류
</body>
</html>