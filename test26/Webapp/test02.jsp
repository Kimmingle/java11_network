<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.kh.dto.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객체와 표현언어</title>
</head>
<body>

<hr>
<h2>객체와 표현언어</h2>
<%
	String name = "김응원";
	int age = 23;
	int num1 = 95;
	int num2 = 98;
	int num3 = 100;  
	
	Member mem1 = new Member(1, "kim", "1234", "김동연" );
	Member mem2 = new Member(2, "lee", "1233", "김민아" );
	Member mem3 = new Member(3, "kwon", "1233", "권민지" );
	
	List<Member> memList = new ArrayList<Member>();
	memList.add(mem1);
	memList.add(mem2);
	memList.add(mem3);
	
	request.setAttribute("irum", name);
	request.setAttribute("age", age);
	request.setAttribute("num1", num1);
	request.setAttribute("num2", num2);
	request.setAttribute("num3", num3);
	request.setAttribute("mem1", mem1);
	request.setAttribute("mem2", mem2);
	request.setAttribute("mem3", mem3);
	request.setAttribute("memList", memList);
	
%>

<div>
	<a href="test03.jsp?tname=배곤희">GET 전송</a>
</div>


<%@ include file="menu.jsp" %>

<h2>객체와 기본언어</h2>
<h2>기본형 표현</h2>

<ul>
	<li><strong>name</strong> : ${name }</li>
	<li><strong>age</strong> : ${age }</li>
	<li><strong>kor</strong> : ${num1 }</li>
	<li><strong>eng</strong> : ${num2 }</li>
	<li><strong>mat</strong> : ${num3 }</li>

</ul>
<hr>
<h3>객체형 표현</h3>
<ul>
	<li><strong>no</strong> : ${mem1.no }</li>
	<li><strong>id</strong> : ${mem1.id }</li>
	<li><strong>pw</strong> : ${mem1.pw }</li>
	<li><strong>name</strong> : ${mem1.name }</li>
</ul>

<ul>
	<li><strong>no</strong> : ${mem2.no }</li>
	<li><strong>id</strong> : ${mem2.id }</li>
	<li><strong>pw</strong> : ${mem2.pw }</li>
	<li><strong>name</strong> : ${mem2.name }</li>
</ul>

<ul>
	<li><strong>no</strong> : ${mem3.no }</li>
	<li><strong>id</strong> : ${mem3.id }</li>
	<li><strong>pw</strong> : ${mem3.pw }</li>
	<li><strong>name</strong> : ${mem3.name }</li>
</ul>

<h3>컬렉션형 표현</h3>
<c:forEach var="mem" items="${memList }">
<ul>
	<li><strong>no</strong> : ${mem.no }</li>
	<li><strong>id</strong> : ${mem.id }</li>
	<li><strong>pw</strong> : ${mem.pw }</li>
	<li><strong>name</strong> : ${mem.name }</li>
</ul>
</c:forEach>
</body>
</html>