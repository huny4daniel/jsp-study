<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn = null; 
Statement stmt = null; 
ResultSet rs = null;

try {
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/web", "root", "12345");

    stmt = conn.createStatement(); 

    String memberId = request.getParameter("memberId");

	int result = stmt.executeUpdate("delete from member where memberId = '" + memberId + "'");
	
    if (result == 1) {
        out.println(memberId + " 삭제 완료!!");
    } 
    else {
        out.println(memberId + " 삭제 문제 발생!!");
    }
} 
catch(SQLException ex) {
    ex.printStackTrace();
} 
finally {
    if (rs != null) try { rs.close(); } catch(SQLException ex) {}
    if (stmt != null) try { stmt.close(); } catch(SQLException ex) {}
    if (conn != null) try { conn.close(); } catch(SQLException ex) {}
}
%>
</body>
</html>