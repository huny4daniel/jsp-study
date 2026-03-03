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

	String food = request.getParameter("food");
	String restPage = null;
	int price = Integer.parseInt(request.getParameter("price"));
	int tasty = Integer.parseInt(request.getParameter("tasty"));
	String quality = "";
	String grade = "";
	
	if (price >= 100000) {
		quality = "고급";
	}
	else if (price >= 50000 && price < 100000) {
		quality = "중급";
	}
	else if (price >= 10000 && price < 50000) {
		quality = "하급";
	}
	request.setAttribute("QUAL", quality);		// request 기본 객체 속성에 추가
	
	if (food.equals("탕수육")) {
		restPage = "/kind/tang.jsp";
	}
	else if (food.equals("짜장면")) {
		restPage = "/kind/zza.jsp";
	}
	else if (food.equals("짬뽕")) {
		restPage = "/kind/bbong.jsp";
	}
	else if (food.equals("우동")) {
		restPage = "/kind/udong.jsp";
	}
	else {
		out.print("error: 메뉴에 없는 것을 주문했습니다.");
	}
	
	if (tasty == 4 || tasty == 5) {
		grade = "진한 맛";
	}
	else if (tasty == 1 || tasty == 2) {
		grade = "순한 맛";
	}
	else if (tasty == 3) {
		grade = "중간 맛";
	}
	request.setAttribute("GRADE", grade);		// request 기본 객체 속성에 추가
%>
<jsp:forward page="<%= restPage %>"/>
</body>
</html>