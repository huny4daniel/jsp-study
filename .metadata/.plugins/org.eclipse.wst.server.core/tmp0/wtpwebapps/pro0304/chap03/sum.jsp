<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>합 구하기</title>
</head>
<body>
<%@ page contentType = "text/html; charset=euc-kr" %>
<%
    int sum = 0;
    for (int i = 1 ; i <= 10 ; i++) {
    	if (i % 2 == 1) {    		
       		sum = sum + i;		
    	}
    }
%>
1 부터 10까지의 합은 <%= sum %> 입니다.
</body>
</html>