<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String userid = "kk";
	String username = "김민아";
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리할거임</title>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	
	
	
	if (id.equals(userid) && name.equals(username)){
		//out.println("로그인");
		
		session.setAttribute("sid", id);
		session.setAttribute("sname", name);
		response.sendRedirect("test10.jsp");
	}else{
		response.sendRedirect("Login.jsp");
	}
	
	
%>

</body>
</html>