<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃 처리</title>
</head>
<body>
<%
	String sId = (String)session.getAttribute("sid");

	if (sId != null){
		session.invalidate();  //세션 종료시켜라
		out.println("로그아웃 댐");
	}
	response.sendRedirect("test10.jsp");
	
%>

</body>
</html>