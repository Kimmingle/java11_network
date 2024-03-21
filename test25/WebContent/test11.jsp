<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% ////jsp인클루드는 같은 페이지로 인식하지 못한다. 그래서 쓸거면 디렉티브 인클루드 써야함

	pageContext.setAttribute("name", "김민아");
	pageContext.setAttribute("age", "24");

%>
	<h2>디렉티브를 활용한 include</h2>
	<%@ include file = "inFile.jsp" %>
	<hr>
	
	<h2>액션태그를 활용한 include</h2>
	<jsp:include page = "inFile.jsp" ></jsp:include>
	
	<hr>

</body>
</html>