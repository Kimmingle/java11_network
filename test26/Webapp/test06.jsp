<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.kh.dto.Member" %>  
<%@ page import = "java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	List<Member>mList = new ArrayList<Member>();
	mList.add(new Member(1, "kim", "1234", "김민석"));
	mList.add(new Member(1, "kim", "1234", "김민석"));
	mList.add(new Member(1, "kim", "1234", "김민석"));
%>

<%@ include file="menu.jsp" %>

<p>
<h2>JSTL</h2>
<hr>
<h3>01.출력문 c:out</h3>
<c:out value="김민아 천사"/>
<hr>
<h3>02.선언문 c:set</h3>
<c:out var="name" value="김민아" scope="session" />
<c:out value="${name}"/>
<hr>
<h3>03. 임포트문 c:import</h3>
<c:set var="path1" value="/Login.jsp"/>
<!--<c:import url="${path1 }"/>-->
<hr>
<h3>* 04.조건문 c:if</h3>
<c:set var="age" value="27"/>
<c:if test="${age >= 20 }">
	<c:out value="성년"/>
</c:if>
<c:if test="${age < 20 }">
	<c:out value="미성년"/>
</c:if>
<hr>
<h3>05.선택문 c:choose</h3>
<c:out var="point" value="85"/>
<c:choose>
	<c:when test="${point >= 90 }"><span>수</span></c:when>
	<c:when test="${point >= 80 }"><span>우</span></c:when>
	<c:when test="${point >= 70 }"><span>미</span></c:when>
	<:otherwise><span>집에가</span></:otherwise>
</c:choose>

<h3>06. 제거문 c:remove</h3>
<c:remove var="age" />
<hr>
<h3>* 07. 반복실행문 c:forEach</h3>
<c:forEach var="mem" items="${mList }" varStatue="status">
	<ul>
		<li>연번 : ${status.cont }</li>
		<li>아이디 : ${status.id }</li>
		<li>이름 : ${status.name }</li>
	</ul>
</c:forEach>
<h3>08. 토큰이 있는 반복실행문 c:forTokens</h3>
<c:forTokens items="유정환-김민아-김윤정-강범준" delims="-" var="name">
	<p>${name }</p>
</c:forTokens>	

<c:forTokens items="유정환-김민아-김윤정-강범준" delims="/* " var="irum">
	<p>${irum }</p>
</c:forTokens>	
<h3>09.인터넷주소 정의문 c:url</h3>
	
	
</body>
</html>