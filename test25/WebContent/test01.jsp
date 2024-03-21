<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%-- --%>
    
    <%-- 1. 각주 : 해당 코드에 대한 설명  --%>
    <%-- 2. <%@디렉티브(필요한 자원(설정이나 리소스)을 가져올때 씀 ex.import ArrayList) %> --%>
    <%-- 3. <%! 선언문  %> : 익명의 클래스  --%>
    <%-- 4. <% 자바 명령문  %> : 해당 페이지에 자바 언어로 프로그래밍한 코드부 --%>
    <%-- 5. <%= 표현식  %> : 해당 결과를 출력 또는 표현식 사용 --%>
    
<%!
    private String name;
    public String getName(){
    	return this.name;
    }
    public void setName(String name){
    	this.name = name;
    }
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
	String title = "메인 페이지";
%>
<title><%= title %></title>
</head>
<body>
<%
	setName("김민아");
%>
<h2><%= getName() %>의 홈페이지</h2>
<hr>


</body>
</html>