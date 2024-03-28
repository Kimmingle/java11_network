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
<title>JSTL FMT</title>
</head>
<body>

<%@ include file="menu.jsp" %>

<h2>FMT(format :표시형식)</h2>
<c:set var="num" value="12345678.789456"></c:set>
<c:set var="data" value="3,652,722"></c:set>
<c:set var="su1" value="0"/>
<c:set var="su2" value="4"/>
<c:set var="su3" value="-650000"/>
<c:set var="today" value="<%=new Date() %>" />
<br><br><br>

<c:out value="${num }"/>
</body>
</html>