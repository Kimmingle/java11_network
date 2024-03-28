<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션 태그</title>
</head>
<body>
<h1>액션 태그(action tag)</h1>
<p>태그의 문법으로 자바처럼 구현할 수 있는 것</p>

<h2>useBean 액션태그</h2>
<p>해당 클래스를 로딩하면서 객체(인스턴스)를 생성할때 사용</p>
<p>Beans 란? 클래스를 의미하며, Bean(인스턴스 객체)를 여러개 만들 수 있다는 의미.</p>
<jsp:useBean id="mem" scope="request" class="org.kh.dto.Member" />
<p>id : 인스턴스명</p>
<p>scope : 인식범위</p>
<p>class : 해당 클래스</p>
<p><strong> * 특정 클래스를 로딩하면서 인스턴스를 생성하는 액션태그</strong></p>

<%
	mem.setNo(1);
	mem.setId("kim");
	mem.setPw("1234");
	mem.setName("김민아");  //이걸 넘겨주고싶을때 사용하는게 Action -forward 태그
%>
<h2>forward 액션 태그</h2>
<P> 객체, 기본 변수, 데이터 값 등을 전송하는 액션태그</P>
<jsp:forward page="test11_result.jsp" />

</body>
</html>