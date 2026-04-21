<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.sql.*,my.dao.*,my.util.*,my.model.*" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Connection conn= ConnectionProvider.getConnection();
	List<Member> list = null;
	try {
		MemberDao dao = new MemberDao();
		list = dao.selectList(conn);
	} catch(SQLException e){}
if (list != null) {
%>
<table border="1">
<tr><th>아이디</th><th>패스워드</th><th>이름</th><th>성적</th><th>등록일</th>
</tr>
<% for (Member member : list) { %>
<tr>
<td><a href="/midterm/pro3/updateForm.jsp?memberId=<%=member.getMemberId()%>"><%=member.getMemberId() %></a></td> <td><%=member.getPassword() %></td>
<td><%=member.getName() %></td> <td><%=member.getGrade() %></td>
<td><%=member.getRegisterDate() %></td>
</tr>
<% } %>
</table>
<% 	
}
%>
</body>
</html>