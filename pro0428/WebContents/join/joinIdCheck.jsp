<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="my.dao.*,my.model.*,my.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<body>
<h2>아이디중복체크</h2>
<%//1. 한글처리 & 받아온 파라미터 변수화
	request.setCharacterEncoding("UTF-8");
	String userId = request.getParameter("userId");
	Connection conn = ConnectionProvider.getConnection();
	boolean result = true;
	try {
		UserDao dao = new UserDao();
		result = dao.idCheck(conn, userId);
	}
	catch (SQLException e) {
	}

	if (result) {
		out.print("사용가능한 아이디입니다");
	
%>
	 <input type="button" value="아이디 사용하기" onclick="result();">
<%
	
}else if(result == false){
	out.print("중복된 아이디입니다");
}else{
	out.print("에러 발생!!!(-1)"); 
}

%>
<!-- 4.팝업창구현  -->
<fieldset>
	<!-- <form action="" method="post">
	action속성에 값이 없으면 기본적으로 자기자신을 불러오지만 중복확인 버튼을 클릭했을때 변경되지않는다.-->	
	<form action="joinIdCheck.jsp" method="post" name="wfr">
		ID : <input type="text" name="userId" value="<%=userId%>">
		<input type="submit" value="중복 확인">	 
	</form>
</fieldset>

<!-- 6. 선택된아이디는 중복확인창에서 회원가입 페이지로 정보전달  -->
 <script type="text/javascript">
    function result(){
    	opener.document.fr.userId.value = document.wfr.userId.value;
    	opener.document.fr.userId.readOnly=true;
    	window.close();
    }
 
 </script>

</body>
</body>
</html>