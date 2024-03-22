<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %> 
<%@ page import="org.kh.dto.Member" %>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현언어 비교문장</title>
</head>
<body>
<c:set scope="application" var="num3" value="30" />
<%
	pageContext.setAttribute("num1", 9);
%>

<%@ include file="menu.jsp" %>
</body>
</html>