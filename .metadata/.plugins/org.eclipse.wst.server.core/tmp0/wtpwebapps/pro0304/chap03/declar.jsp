<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	public int sum(int a, int b) {
		int sum = a+b;
		return sum;
	}
	public int min(int a, int b) {
		int min = a-b;
		return min;
	}
	public int multi(int a, int b) {
		return a*b;
	}
	public int divi(int a, int b) {
		return a/b;
	}
%>

10 + 15 = <%= sum(10, 15) %> <br>
10 - 15 = <%= min(10, 15) %> <br>
10 * 15 = <%= multi(10, 15) %> <br>
10 / 15 = <%= divi(10, 15) %> <br>
</body>
</html>