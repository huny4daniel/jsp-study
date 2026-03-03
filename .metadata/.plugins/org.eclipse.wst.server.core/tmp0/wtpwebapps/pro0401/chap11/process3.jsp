<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="my.info.Student" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="stud" class="my.info.Student" scope="session"/>
<jsp:setProperty name="stud" property="*" />

학생이름: <%= stud.getStudName() %> <br>
아이디: <%= stud.getStudId() %> <br>
나이: <%= stud.getAge() %> <br>
학과: <%= stud.getDepart() %> <br>
취미:
<%
    for (String hobby: stud.getHobby()) {
        out.print(hobby + ":");
    }
%>
</body>
</html>	