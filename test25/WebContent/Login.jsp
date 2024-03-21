<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면임</title>
</head>
<body>
<h2>로그인</h2>

<form action = "loginPro.jsp" method="post">
	<input type="text" name="id" id ="id" placeholder="아이디입력"> <br>
	<input type="text" name="name" id ="name" placeholder="이름입력"> <br>
	<button type="submit">로그인</button>&nbsp;&nbsp;&nbsp;&nbsp;
	<button type="submit">취소</button>
</form>


</body>
</html>