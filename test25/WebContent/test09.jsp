<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스코프 데이터 추적하기</title>
</head>
<body>
<h2>스코프 데이터 추적하기</h2>
<%
	String msg = request.getParameter("msg");
	String pageData = (String) pageContext.getAttribute("pageData");
	String reqData = (String) request.getAttribute("reqData");
	String sesData = (String) session.getAttribute("sesData");
	String appData = (String) application.getAttribute("appData");
%>
<div>
	<p>msg(request on) : <%=msg %></p>
	<p>pageData(pageContext) : <%= pageData %></p>  
	<p>reqData(request off) : <%= reqData %></p>
	<p>sesData(session) : <%= sesData %></p>
	<p>appData(application) : <%= appData %></p>

<%
	session.invalidate();  //세션 종료							//참고로 invalidate() 메서드로 세션을 종료해도 sesData에는 아직 값이있음 ! 27번째 줄
	//sesData = (String) session.getAttribute("sesData");  //세션 종료후에 세션을 불러와서 null오류가 발생함
																	
%>
	<p>세션 종료 후</p>
	<p>sesData(session) : <%=session.getAttribute("sesData") %>
	<p>appData(application) : <%=appData %>
	<p>web.xml 전역 변수 :<%=application.getInitParameter("admin") %> </p>
	
	<a href="index.jsp">홈으로</a><br>
	<a href="test06.jsp">테스트06페이지</a><br>
</div>
</body>
</html>