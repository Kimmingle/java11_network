<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>foward로 전송 받기</title>
</head>
<body>

<jsp:useBean id="mem" scope="request" class="org.kh.dto.Member"/>
<h2>표현식으로 가져오기</h2>

<ul>
	<li> 번호 : <%=mem.getNo() %></li>
	<li> 아이디:<%=mem.getId() %></li>
	<li> 비번 : <%=mem.getPw() %></li>
	<li> 이름 : <%=mem.getName() %></li>
	
</ul>


<h2>표현 언어로 가져오기</h2>

<ul>
	<li> 번호 : ${mem.no }</li>
	<li> 아이디: ${mem.id }</li>
	<li> 비번 : ${mem.pw }</li>
	<li> 이름 :  ${mem.name }</li>
	
</ul>
</body>
</html>